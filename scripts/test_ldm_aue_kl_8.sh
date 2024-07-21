
# bash ./scripts/test_ldm.sh

# python main.py --base configs/bsr_sr/config_sr_finetune.yaml -t --gpus 0, --train --scale_lr False

# python scripts/sr_val_ddim_realsr.py --config configs/bsr_sr/config_sr_finetune.yaml --ckpt ./models/ldmsr4x_finetune_119.ckpt --outdir ./outputs/DIV2K_valid_100_750x1000_center_crop --skip_grid --ddim_steps 200 --init-img ./testdata/DIV2K_valid_100_750x1000_center_crop --ddim_eta 1.0 --color_fix

# python scripts/sr_val_ddim_realsr.py --config configs/bsr_sr/config_sr_unet_scratch.yaml --ckpt ./logs/2024-07-07T15-31-45_config_sr_unet_scratch/checkpoints/last.ckpt --outdir ./outputs/2024-07-07T15-31-45_config_sr_unet_scratch/DIV2K_valid_100_750x1000_center_crop_ddim_500 --skip_grid --ddim_steps 500 --init-img ./testdata/DIV2K_valid_100_750x1000_center_crop --ddim_eta 1.0 --color_fix

python scripts/test_ldm_aue_kl_8.py \
--config configs/bsr_sr/config_sr_finetune.yaml \
--vqgan_ckpt D:/Vinh/3.Project_working/git_tutorial/StableSR/checkpoints/vqgan_cfw_00011.ckpt \
--ckpt ./models/ldmsr4x_finetune_119.ckpt \
--skip_grid --ddim_steps 200 \
--init-img D:/Vinh/3.Project_working/diffusion/dataset/test_data/DIV2K_valid_100_750x1000_center_crop_x4 \
--outdir ./outputs/sr_val_ddim_realsr_aue_kl4/DIV2K_valid_100_750x1000_center_crop_x4_ddim_200 \
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

