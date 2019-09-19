#!/bin/bash
export CUDA_VISIBLE_DEVICES=0

python ../main.py \
	--root_path /misc/dl001/\
	--video_path dataset/NVIDIA/nvgesture_arch \
	--annotation_path bega/Real-time-GesRec/annotation_nvGesture/nvbinaryrgb.json \
	--result_path bega/Real-time-GesRec/results \
	--pretrain_path bega/Real-time-GesRec/report/NVrgb_det_resnetl-10_ep45.pth \
	--pretrain_dataset nv \
	--dataset nv \
	--sample_duration 4 \
    --learning_rate 0.01 \
    --model resnetl \
	--model_depth 10 \
	--resnet_shortcut A \
	--batch_size 16 \
	--n_classes 2 \
	--n_finetune_classes 2 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality RGB \
	--train_crop random \
	--n_val_samples 1 \
	--test_subset test \
 	--n_epochs 100 \
    --store_name NVrgb_det_4sd \