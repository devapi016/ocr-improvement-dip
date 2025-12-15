python3 tools/export_model.py -c configs/e2e/e2e_r50_vd_pg_unclean_blur_only_self.yml -o Global.pretrained_model=./output/pgnet_r50_vd_unclean_blur_only_self/best_accuracy Global.load_static_weights=False Global.save_inference_dir=./inference/e2e_pgnet_unclean_blur_self_only

python3 tools/export_model.py -c configs/e2e/e2e_r50_vd_pg_unclean_low_light_only_self.yml -o Global.pretrained_model=./output/pgnet_r50_vd_unclean_low_light_only_self/best_accuracy Global.load_static_weights=False Global.save_inference_dir=./inference/e2e_pgnet_unclean_low_light_self_only

