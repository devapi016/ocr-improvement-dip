#!/bin/bash

mkdir -p inference_data

# # Basline Model

# # e2e_pgnet_unclean_blur_self_only
# # e2e_server_pgnetA_infer.tar
# # e2e_pgnet_unclean_low_light_self_only
# # e2e_totaltext_infer1
# # e2e_server_pgnetA_infer

# ## Total text
# FOLDER="total_text"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/total_text/test/rgb" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ## Blur
# ### No enchancement

# FOLDER="unclean_data_baseline/blur/no_enchancement"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 1

# FOLDER="unclean_data_baseline/blur/sharpen_deep1(2)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep2" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep2" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 2

# FOLDER="unclean_data_baseline/blur/sharpen_deep2(4)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep4" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep4" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 3

# FOLDER="unclean_data_baseline/blur/sharpen_deep3(5)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep5" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep5" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 4

# FOLDER="unclean_data_baseline/blur/sharpen_deep4(6)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep6" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep6" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 5

# FOLDER="unclean_data_baseline/blur/sharpen_deep5(7)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep7" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep7" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results


### Blind Deconvolution Deep 1

FOLDER="unclean_data_baseline/blur/bd_gemini_deep1"
mkdir inference_data/$FOLDER

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_bd_gemini_deep1/img_est_weiner" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_bd_gemini_deep1/img_est_weiner" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

### Blind Deconvolution Deep 2

FOLDER="unclean_data_baseline/blur/bd_gemini_deep2"
mkdir inference_data/$FOLDER

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_bd_gemini_deep2/img_est_weiner" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_bd_gemini_deep2/img_est_weiner" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

### Blind Deconvolution Deep 3

FOLDER="unclean_data_baseline/blur/bd_gemini_deep3"
mkdir inference_data/$FOLDER

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_bd_gemini_deep3/img_est_weiner" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_bd_gemini_deep3/img_est_weiner" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results


# ## Low Light
# ### No enchancement

# FOLDER="unclean_data_baseline/low_light/no_enchancement"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 1 (3)

# FOLDER="unclean_data_baseline/low_light/clahe_deep1(3)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep3" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep3" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 2 (1)

# FOLDER="unclean_data_baseline/low_light/clahe_deep2(1)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep1" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep1" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 3 (2)

# FOLDER="unclean_data_baseline/low_light/clahe_deep3(2)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep2" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep2" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 4 (4)

# FOLDER="unclean_data_baseline/low_light/clahe_deep4(4)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep4" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep4" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 5 (5)

# FOLDER="unclean_data_baseline/low_light/clahe_deep5(5)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep5" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep5" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results


# ### MSRCP 1

# FOLDER="unclean_data_baseline/low_light/msrcp_deep1"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep1" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep1" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 2

# FOLDER="unclean_data_baseline/low_light/msrcp_deep2"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep2" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep2" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 3

# FOLDER="unclean_data_baseline/low_light/msrcp_deep3"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep3" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep3" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 4

# FOLDER="unclean_data_baseline/low_light/msrcp_deep4"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep4" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep4" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 5

# FOLDER="unclean_data_baseline/low_light/msrcp_deep5"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep5" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep5" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 6

# FOLDER="unclean_data_baseline/low_light/msrcp_deep6"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep6" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep6" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 7

# FOLDER="unclean_data_baseline/low_light/msrcp_deep7"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep7" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep7" --e2e_model_dir="./inference/e2e_totaltext_infer1" --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results




# # Finetuned Model

# # e2e_pgnet_unclean_blur_self_only
# # e2e_server_pgnetA_infer.tar
# # e2e_pgnet_unclean_low_light_self_only
# # e2e_totaltext_infer1
# # e2e_server_pgnetA_infer

# ## Total text
#  ##### Not relevant

# ## Blur
BLUR_INFER_MODEL_PATH="./inference/e2e_pgnet_unclean_blur_self_only"
# ### No enchancement

# FOLDER="unclean_data_finetuned/blur/no_enchancement"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 1

# FOLDER="unclean_data_finetuned/blur/sharpen_deep1(2)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep2" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep2" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 2

# FOLDER="unclean_data_finetuned/blur/sharpen_deep2(4)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep4" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep4" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 3

# FOLDER="unclean_data_finetuned/blur/sharpen_deep3(5)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep5" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep5" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 4

# FOLDER="unclean_data_finetuned/blur/sharpen_deep4(6)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep6" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep6" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### Sharpen Deep 5

# FOLDER="unclean_data_finetuned/blur/sharpen_deep5(7)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_sharpen_deep7" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_sharpen_deep7" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results


### Blind Deconvolution Deep 1

FOLDER="unclean_data_finetuned/blur/bd_gemini_deep1"
mkdir inference_data/$FOLDER

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_bd_gemini_deep1/img_est_weiner" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_bd_gemini_deep1/img_est_weiner" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

### Blind Deconvolution Deep 2

FOLDER="unclean_data_finetuned/blur/bd_gemini_deep2"
mkdir inference_data/$FOLDER

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_bd_gemini_deep2/img_est_weiner" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_bd_gemini_deep2/img_est_weiner" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

### Blind Deconvolution Deep 3

FOLDER="unclean_data_finetuned/blur/bd_gemini_deep3"
mkdir inference_data/$FOLDER

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/selected_blur_bd_gemini_deep3/img_est_weiner" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results

python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_blur/br_common_bd_gemini_deep3/img_est_weiner" --e2e_model_dir=$BLUR_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

mv inference_results/* inference_data/$FOLDER/
rmdir inference_results



# ## Low Light
# LOW_LIGHT_INFER_MODEL_PATH="./inference/e2e_pgnet_unclean_low_light_self_only"
# ### No enchancement

# FOLDER="unclean_data_finetuned/low_light/no_enchancement"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 1 (3)

# FOLDER="unclean_data_finetuned/low_light/clahe_deep1(3)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep3" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep3" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 2 (1)

# FOLDER="unclean_data_finetuned/low_light/clahe_deep2(1)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep1" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep1" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 3 (2)

# FOLDER="unclean_data_finetuned/low_light/clahe_deep3(2)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep2" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep2" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 4 (4)

# FOLDER="unclean_data_finetuned/low_light/clahe_deep4(4)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep4" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep4" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### CLAHE 5 (5)

# FOLDER="unclean_data_finetuned/low_light/clahe_deep5(5)"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_clahe_deep5" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_clahe_deep5" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results


# ### MSRCP 1

# FOLDER="unclean_data_finetuned/low_light/msrcp_deep1"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep1" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep1" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 2

# FOLDER="unclean_data_finetuned/low_light/msrcp_deep2"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep2" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep2" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 3

# FOLDER="unclean_data_finetuned/low_light/msrcp_deep3"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep3" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep3" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 4

# FOLDER="unclean_data_finetuned/low_light/msrcp_deep4"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep4" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep4" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 5

# FOLDER="unclean_data_finetuned/low_light/msrcp_deep5"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep5" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep5" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 6

# FOLDER="unclean_data_finetuned/low_light/msrcp_deep6"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep6" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep6" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# ### MSRCP 7

# FOLDER="unclean_data_finetuned/low_light/msrcp_deep7"
# mkdir -p inference_data/$FOLDER

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/selected_contrast_msrcp_deep7" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results

# python3 tools/infer/predict_e2e.py --e2e_algorithm="PGNet" --image_dir="./train_data/unclean_data/unclean_low_light/lc_common_msrcp_deep7" --e2e_model_dir=$LOW_LIGHT_INFER_MODEL_PATH --e2e_pgnet_valid_set="totaltext"

# mv inference_results/* inference_data/$FOLDER/
# rmdir inference_results





































