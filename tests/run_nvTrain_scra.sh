#!/bin/bash
export CUDA_VISIBLE_DEVICES=0

python main.py \
	--root_path /misc/dl001/\
	--video_path dataset/NVIDIA/nvgesture_arch \
	--annotation_path bega/Real-time-GesRec/annotation_nvGesture/nvbinary.json \
	--result_path bega/Real-time-GesRec/results \
	--dataset nv \
	--sample_duration 8 \
    --learning_rate 0.01 \
    --model resnetl \
	--model_depth 10 \
	--resnet_shortcut A \
	--batch_size 8 \
	--n_classes 2 \
	--n_finetune_classes 2 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality Depth \
	--train_crop random \
	--n_val_samples 1 \
	--test_subset test \
	--store_name model_scra \
    --n_epochs 100 \

