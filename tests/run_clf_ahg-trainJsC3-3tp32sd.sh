#!/bin/bash 	#dl04
export CUDA_VISIBLE_DEVICES=1

python ../main.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01all_but_None.json \
	--result_path bega/Real-time-GesRec/AHG_results \
	--pretrain_path bega/Real-time-GesRec/report/jester_c3d_10_RGB_32.pth \
	--pretrain_dataset jester \
	--dataset AHG \
	--sample_duration 32 \
    --learning_rate 0.01 \
    --model c3d \
	--model_depth 10 \
	--batch_size 14 \
	--n_classes 8 \
	--n_finetune_classes 8 \
	--n_threads 14 \
	--checkpoint 1 \
	--modality Depth \
	--train_crop random \
	--train_temporal ranpad \
	--temporal_pad 3 \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --true_valid \
    --store_name ahgClfc3d_js_32tp3t \

