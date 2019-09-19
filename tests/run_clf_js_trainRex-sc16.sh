#!/bin/bash 	#dl04
export CUDA_VISIBLE_DEVICES=0

python ../main.py \
	--root_path /misc/dl001/\
	--video_path dataset/20BN-jester/20bn-jester-v1 \
	--annotation_path bega/Real-time-GesRec/annotation_Jester/jester.json \
	--result_path bega/Real-time-GesRec/results \
	--dataset jester \
	--sample_duration 16 \
    --learning_rate 0.01 \
    --model resnext \
	--model_depth 101 \
	--resnet_shortcut B \
	--batch_size 40 \
	--n_classes 27 \
	--n_threads 20 \
	--checkpoint 1 \
	--modality RGB \
	--train_crop random \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --store_name jsClf_scr16r \

