#!/bin/bash 	#dl04
export CUDA_VISIBLE_DEVICES=6

python ../main.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01all_tra.json \
	--result_path bega/Real-time-GesRec/AHG_results \
	--pretrain_path bega/Real-time-GesRec/report/jester_c3d_10_RGB_32-94.pth \
	--pretrain_dataset jester \
	--dataset AHG \
	--sample_duration 32 \
    --learning_rate 0.01 \
    --model c3d \
	--model_depth 10 \
	--batch_size 16 \
	--n_classes 9 \
	--n_finetune_classes 9 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality Depth \
	--train_crop random \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --true_valid \
    --lr_steps 10 25 50 80 100 \
    --store_name ahgClf_js2_32tall \

