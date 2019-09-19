#!/bin/bash 	#dl04
export CUDA_VISIBLE_DEVICES=2

python ../main.py \
	--root_path /misc/dl001/\
	--video_path dataset/NVIDIA/nvgesture_arch \
	--annotation_path bega/Real-time-GesRec/annotation_nvGesture/nvall_but_None.json \
	--result_path bega/Real-time-GesRec/results \
	--resume_path bega/Real-time-GesRec/report/model_clfjes_resnext-101_ep28.pth \
	--dataset nv \
	--sample_duration 32 \
    --learning_rate 0.01 \
    --model resnext \
	--model_depth 101 \
	--resnet_shortcut B \
	--batch_size 8 \
	--n_classes 25 \
	--n_finetune_classes 25 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality Depth \
	--train_crop random \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --store_name model_clfjes \

