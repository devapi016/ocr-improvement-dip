#!/bin/bash

OUTFILE="results_fintune_model.md"

echo "# PGNet Evaluation Report - Finetune Model" > $OUTFILE
echo "Generated on: $(date)" >> $OUTFILE
echo "" >> $OUTFILE

echo "# Finetuned Model" > $OUTFILE
echo "" >> $OUTFILE

echo "## Total Text (Baseline Dataset) (300 samples)" >> $OUTFILE
echo '```' >> $OUTFILE
echo "Not relevant" >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE


echo "Blur Dataset (11)" >> $OUTFILE
echo "" >> $OUTFILE

echo "### No enchancement" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "" >> $OUTFILE

# echo "### Sharpening 1" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep1.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
# echo "### Sharpening 2" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep2.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
# echo "### Sharpening 3" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep3.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
# echo "### Sharpening 4" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep4.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
# echo "### Sharpening 5" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep5.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
# echo "" >> $OUTFILE

# echo "### Sharpening 1" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep1.yml  -o Global.checkpoints="./pretrain_models/en_server_pgnetA/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
echo "### Sharpening 1 (2)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep2.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
# echo "### Sharpening 3" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep3.yml  -o Global.checkpoints="./pretrain_models/en_server_pgnetA/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
echo "### Sharpening 2 (4)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep4.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### Sharpening 3 (5)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep5.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### Sharpening 4 (6)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep6.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### Sharpening 5 (7)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_sharpen_deep7.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "" >> $OUTFILE

echo "### Blind deconvolution 1" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_bd_gemini_deep1.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### Blind deconvolution 2" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_bd_gemini_deep2.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### Blind deconvolution 3" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self_bd_gemini_deep3.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "" >> $OUTFILE


echo "## Low Contrast (18)" >> $OUTFILE
echo "" >> $OUTFILE

echo "### No enchancement" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "" >> $OUTFILE

# echo "### CLAHE 1" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_clahe_deep1.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
# echo "### CLAHE 2" >> $OUTFILE
# echo '```' >> $OUTFILE
# python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_clahe_deep2.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
# echo '```' >> $OUTFILE
# echo "" >> $OUTFILE
# echo "" >> $OUTFILE

echo "### CLAHE 1 (3)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_clahe_deep3.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### CLAHE 2 (1)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_clahe_deep1.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### CLAHE 3 (2)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_clahe_deep2.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### CLAHE 4 (4)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_clahe_deep4.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### CLAHE 5 (5)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_clahe_deep5.yml  -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "" >> $OUTFILE

echo "### MSRCP 1" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_msrcp_deep1.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### MSRCP 2" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_msrcp_deep2.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### MSRCP 3" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_msrcp_deep3.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### MSRCP 4" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_msrcp_deep4.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### MSRCP 5" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_msrcp_deep5.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### MSRCP 6" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_msrcp_deep6.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "### MSRCP 7" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self_msrcp_deep7.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "" >> $OUTFILE


