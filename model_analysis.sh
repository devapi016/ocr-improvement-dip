#!/bin/bash

OUTFILE="model_training_report.md"

echo "# PGNet Model Training Report" > $OUTFILE
echo "Generated on: $(date)" >> $OUTFILE
echo "" >> $OUTFILE

echo "## Model 0 (Untrained Model)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_total.yml -o Global.checkpoints="./pretrain_models/en_server_pgnetA/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE


echo "## Model 1 (PUblic + self - combined)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_total.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_total/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "## Model 2 (Public + self - blur only)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_public220.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_w_public/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "## Model 3 (Public + self - low_contrast only)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_public220.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_w_public/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "## Model 4 (self - blur only)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE
echo "## Model 5 (self - low_contrast only)" >> $OUTFILE
echo '```' >> $OUTFILE
python3 tools/eval.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self.yml -o Global.checkpoints="./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy" 2>&1 | tail -n 13 >> $OUTFILE
echo '```' >> $OUTFILE
echo "" >> $OUTFILE



