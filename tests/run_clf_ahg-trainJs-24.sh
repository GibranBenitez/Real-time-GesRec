#!/bin/bash 	#dl04
export CUDA_VISIBLE_DEVICES=1

python ../main.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01all_but_None.json \
	--result_path bega/Real-time-GesRec/AHG_results \
	--pretrain_path bega/Real-time-GesRec/report/jester_resnext_101_RGB_24-88.pth \
	--pretrain_dataset jester \
	--dataset AHG \
	--sample_duration 24 \
    --learning_rate 0.01 \
    --model resnext \
	--model_depth 101 \
	--resnet_shortcut B \
	--batch_size 24 \
	--n_classes 8 \
	--n_finetune_classes 8 \
	--n_threads 12 \
	--checkpoint 1 \
	--modality Depth \
	--train_crop random \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --true_valid \
    --store_name ahgClf_js_24t \