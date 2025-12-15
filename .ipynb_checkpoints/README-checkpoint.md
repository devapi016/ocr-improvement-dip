# ECE 253 FINAL REPORT - OCR IMPROVEMENT FOR ROBOTICS APPLICATIONS USING DIGITAL IMAGE PROCESSING
###  - By Deep Patel and Sri Mihir Devapi Ungarala

## Installation

Create mamba/conda environment with python 3.12 using
```
mamba create paddle_pgnet -n python=3.12
```

and follow the instructions given [here](https://www.paddleocr.ai/v2.9/en/ppocr/installation.html?h=ins#2-install-paddlepaddle-20)

## Download

Download data for folders `train_data/`, `pretrained_models/`, and `output/` from link [here](https://drive.google.com/drive/folders/1LFZNUc0TBrLGSSExMYCTQUZn04Jf1CUS?usp=sharing).

<!-- ```
train_data/
├── total_text
│   ├── test
│   │   └── rgb
│   └── train
│       └── rgb
└── unclean_data
    ├── unclean_blur
    │   ├── br_common
    │   ├── br_common_bd_gemini_deep1
    │   ├── br_common_bd_gemini_deep2
    │   ├── br_common_bd_gemini_deep3
    │   ├── br_common_sharpen_deep1
    │   ├── br_common_sharpen_deep2
    │   ├── br_common_sharpen_deep3
    │   ├── br_common_sharpen_deep4
    │   ├── br_common_sharpen_deep5
    │   ├── br_common_sharpen_deep6
    │   ├── br_common_sharpen_deep7
    │   ├── icdar2015_paddleocr
    │   ├── selected_blur
    │   ├── selected_blur_bd_gemini_deep1
    │   ├── selected_blur_bd_gemini_deep2
    │   ├── selected_blur_bd_gemini_deep3
    │   ├── selected_blur_sharpen_deep1
    │   ├── selected_blur_sharpen_deep2
    │   ├── selected_blur_sharpen_deep3
    │   ├── selected_blur_sharpen_deep4
    │   ├── selected_blur_sharpen_deep5
    │   ├── selected_blur_sharpen_deep6
    │   └── selected_blur_sharpen_deep7
    └── unclean_low_light
        ├── icdar2015_low_light
        ├── lc_common
        ├── lc_common_clahe_deep1
        ├── lc_common_clahe_deep2
        ├── lc_common_clahe_deep3
        ├── lc_common_clahe_deep4
        ├── lc_common_clahe_deep5
        ├── lc_common_msrcp_deep1
        ├── lc_common_msrcp_deep2
        ├── lc_common_msrcp_deep3
        ├── lc_common_msrcp_deep4
        ├── lc_common_msrcp_deep5
        ├── lc_common_msrcp_deep6
        ├── lc_common_msrcp_deep7
        ├── selected_contrast
        ├── selected_contrast_clahe_deep1
        ├── selected_contrast_clahe_deep2
        ├── selected_contrast_clahe_deep3
        ├── selected_contrast_clahe_deep4
        ├── selected_contrast_clahe_deep5
        ├── selected_contrast_msrcp_deep1
        ├── selected_contrast_msrcp_deep2
        ├── selected_contrast_msrcp_deep3
        ├── selected_contrast_msrcp_deep4
        ├── selected_contrast_msrcp_deep5
        ├── selected_contrast_msrcp_deep6
        ├── selected_contrast_msrcp_deep7
``` -->

## Evaluation
To get evaluation report of baseline(unfinetuned model), run
```
sh results_script_baseline.sh
```

This will generate `results_baseline_model.md` file containing the evaluation results for baseline model.

Similarly, tto get evaluation report of finetuned model, run
```
sh results_script_finetuned.sh
```

This will generate `results_finetune_model.md` file containing the evaluation results for finetuned model.


