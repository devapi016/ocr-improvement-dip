# copyright (c) 2021 PaddlePaddle Authors. All Rights Reserve.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
import numpy as np
import os
import cv2
from paddle.io import Dataset
from .imaug import transform, create_operators
import random

from ppocr.data.pgnet_dataset import PGDataSet

class MSRCPProcessor:
    """
    Multi-Scale Retinex with Color Restoration (MSRCP) implementation
    """
    def __init__(self, scales=[15, 80, 250], weights=[1/3, 1/3, 1/3], 
                 gain=1, offset=0, restoration_factor=1, clip_limit=2.0):
        """
        Initialize MSRCP processor with configurable parameters
        
        Args:
            scales: List of scales for Gaussian filtering
            weights: Weights for combining multi-scale results
            gain: Gain factor for contrast enhancement
            offset: Offset for contrast enhancement
            restoration_factor: Factor for color restoration
            clip_limit: Limit for CLAHE (Contrast Limited Adaptive Histogram Equalization)
        """
        self.scales = scales
        self.weights = weights
        self.gain = gain
        self.offset = offset
        self.restoration_factor = restoration_factor
        self.clip_limit = clip_limit
        
    def single_scale_retinex(self, img, sigma):
        """Apply single scale retinex"""
        blur = cv2.GaussianBlur(img, (0, 0), sigma)
        return np.log10(img + 1.0) - np.log10(blur + 1.0)
    
    def multi_scale_retinex(self, img):
        """Apply multi-scale retinex"""
        retinex = np.zeros_like(img)
        for i, sigma in enumerate(self.scales):
            retinex += self.weights[i] * self.single_scale_retinex(img, sigma)
        return retinex
    
    def color_restoration(self, img, original_img):
        """Apply color restoration"""
        img_sum = np.sum(img, axis=2, keepdims=True)
        color_restoration = np.log10(self.restoration_factor * original_img - np.log10(original_img + 1.0))
        color_restoration = np.sum(color_restoration, axis=2, keepdims=True)
        return img_sum * (color_restoration - np.min(color_restoration)) / \
               (np.max(color_restoration) - np.min(color_restoration))
    
    def process(self, img):
        """Apply MSRCP to an image"""
        # Convert to float32 to avoid overflow
        img_float = img.astype(np.float32) / 255.0
        
        # Apply multi-scale retinex
        retinex = self.multi_scale_retinex(img_float)
        
        # Apply color restoration
        color_restored = self.color_restoration(retinex, img_float)
        
        # Combine retinex and color restoration
        msrcp = self.gain * (retinex + color_restored) + self.offset
        
        # Normalize to 0-255 range
        msrcp = (msrcp - np.min(msrcp)) / (np.max(msrcp) - np.min(msrcp)) * 255.0
        
        # Convert back to uint8
        msrcp = msrcp.astype(np.uint8)
        
        # Apply CLAHE for additional contrast enhancement
        lab = cv2.cvtColor(msrcp, cv2.COLOR_BGR2LAB)
        l, a, b = cv2.split(lab)
        clahe = cv2.createCLAHE(clipLimit=self.clip_limit, tileGridSize=(8, 8))
        l = clahe.apply(l)
        lab = cv2.merge((l, a, b))
        msrcp = cv2.cvtColor(lab, cv2.COLOR_LAB2BGR)
        
        return msrcp


class PGDataSetWithMSRCP(PGDataSet):
    """
    Dataset class that extends PGDataSet with MSRCP preprocessing
    """
    def __init__(self, config, mode, logger, seed=None):
        super(PGDataSetWithMSRCP, self).__init__(config, mode, logger, seed)
        
        # Initialize MSRCP processor with parameters from config or defaults
        dataset_config = config[mode]["dataset"]
        msrcp_config = dataset_config.get("msrcp", {})
        
        self.msrcp_processor = MSRCPProcessor(
            scales=msrcp_config.get("scales", [15, 80, 250]),
            weights=msrcp_config.get("weights", [1/3, 1/3, 1/3]),
            gain=msrcp_config.get("gain", 1),
            offset=msrcp_config.get("offset", 0),
            restoration_factor=msrcp_config.get("restoration_factor", 1),
            clip_limit=msrcp_config.get("clip_limit", 2.0)
        )
        
        # Apply MSRCP only if specified in config
        self.apply_msrcp = msrcp_config.get("apply", False)
        
        logger.info(f"MSRCP preprocessing {'enabled' if self.apply_msrcp else 'disabled'}")
        if self.apply_msrcp:
            logger.info(f"MSRCP parameters: scales={self.msrcp_processor.scales}, "
                       f"weights={self.msrcp_processor.weights}, "
                       f"gain={self.msrcp_processor.gain}, "
                       f"offset={self.msrcp_processor.offset}, "
                       f"restoration_factor={self.msrcp_processor.restoration_factor}, "
                       f"clip_limit={self.msrcp_processor.clip_limit}")

    def __getitem__(self, idx):
        file_idx = self.data_idx_order_list[idx]
        data_line = self.data_lines[file_idx]
        img_id = 0
        try:
            data_line = data_line.decode("utf-8")
            substr = data_line.strip("\n").split(self.delimiter)
            file_name = substr[0]
            label = substr[1]
            img_path = os.path.join(self.data_dir, file_name)
            if self.mode.lower() == "eval":
                try:
                    img_id = int(data_line.split(".")[0][7:])
                except:
                    img_id = 0
            data = {"img_path": img_path, "label": label, "img_id": img_id}
            if not os.path.exists(img_path):
                raise Exception("{} does not exist!".format(img_path))
            with open(data["img_path"], "rb") as f:
                img = f.read()
                data["image"] = img
                
                # Apply MSRCP preprocessing if enabled
                if self.apply_msrcp:
                    # Convert bytes to numpy array
                    nparr = np.frombuffer(img, np.uint8)
                    # Decode image
                    img_np = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
                    # Apply MSRCP
                    img_msrcp = self.msrcp_processor.process(img_np)
                    # Convert back to bytes
                    _, img_bytes = cv2.imencode('.jpg', img_msrcp)
                    data["image"] = img_bytes.tobytes()
                
            outs = transform(data, self.ops)
        except Exception as e:
            self.logger.error(
                "When parsing line {}, error happened with msg: {}".format(
                    self.data_idx_order_list[idx], e
                )
            )
            outs = None
        if outs is None:
            return self.__getitem__(np.random.randint(self.__len__()))
        return outs