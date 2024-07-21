
# bash ./scripts/test_ldm_aue_kl_4.sh


python scripts/sr_val_ddim_realsr_aue_kl4.py \
--config configs/bsr_sr/config_sr_finetune.yaml \
--ckpt ./models/ldmsr4x_finetune_119.ckpt \
--skip_grid --ddim_steps 200 \
--init-img D:/Vinh/3.Project_working/diffusion/dataset/test_data/DIV2K_valid_100_750x1000_center_crop_x4 \
--outdir ./outputs/sr_val_ddim_realsr_aue_kl4/DIV2K_valid_100_750x1000_center_crop_x4_ddim_200_resi \
--ddim_eta 1.0 --color_fix


# python scripts/sr_val_ddim_realsr_2level.py \
# --config configs/bsr_sr/config_sr_finetune.yaml \
# --ckpt ./models/ldmsr4x_finetune_119.ckpt \
# --skip_grid --ddim_steps 4 \
# --init-img D:/Vinh/3.Project_working/diffusion/dataset/test_data/DIV2K_valid_100_750x1000_center_crop_x4 \
# --outdir ./outputs/2024-07-07T15-31-45_config_sr_unet_org/DIV2K_valid_100_750x1000_center_crop_x4_ddim_200step_2_lelve \
# --ddim_eta 1.0 --color_fix



# python scripts/sr_val_ddim_realsr.py \
# --config configs/bsr_sr/config_sr_unet_scratch.yaml \
# --ckpt ./logs/2024-07-07T15-31-45_config_sr_unet_scratch/checkpoints/last.ckpt \
# --skip_grid --ddim_steps 200 \
# --init-img D:/Vinh/3.Project_working/diffusion/dataset/test_data/DIV2K_valid_100_750x1000_center_crop_x4 \
# --outdir ./outputs/2024-07-07T15-31-45_config_sr_unet_org/DIV2K_valid_100_750x1000_center_crop_x4_use_encoder_scatch \
# --ddim_eta 1.0 --color_fix

