#!/bin/bash
export CUDA_VISIBLE_DEVICES=5

python ../main.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01binary.json \
	--result_path bega/Real-time-GesRec/AHG_results \
	--dataset AHG \
	--sample_duration 8 \
    --learning_rate 0.01 \
    --model resnetl \
	--model_depth 10 \
	--resnet_shortcut A \
	--batch_size 64 \
	--n_classes 2 \
	--n_finetune_classes 2 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality Depth \
	--train_crop random \
	--n_val_samples 1 \
	--test_subset test \
 	--n_epochs 150 \
 	--lr_steps 20 40 70 120 \
    --store_name ahgDet2_8sd2sp \