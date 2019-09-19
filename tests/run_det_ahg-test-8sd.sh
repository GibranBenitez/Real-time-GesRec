#!/bin/bash
export CUDA_VISIBLE_DEVICES=5

python ../offline_test.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01binary.json \
	--result_path bega/Real-time-GesRec/AHG_results \
	--resume_path bega/Real-time-GesRec/AHG_results/ahgDet2_8sd2sp_resnetl-10_best.pth \
	--dataset AHG \
	--sample_duration 8 \
    --model resnetl \
	--model_depth 10 \
	--resnet_shortcut A \
	--batch_size 64 \
	--n_classes 2 \
	--n_finetune_classes 2 \
	--n_threads 16 \
	--modality Depth \
	--n_val_samples 1 \
	--test_subset test \
    --store_name ahgDet2_8sd2sp \