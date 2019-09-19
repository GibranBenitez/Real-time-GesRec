#!/bin/bash 	#dl04
export CUDA_VISIBLE_DEVICES=1

python ../main.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/Pointing/depth_gray2 \
	--annotation_path bega/datasets/Pointing/train_sets/denso3all_but_None.json \
	--result_path bega/Real-time-GesRec/denso_results \
	--pretrain_path bega/Real-time-GesRec/report/jester_c3d_10_RGB_32-94.pth \
	--pretrain_dataset jester \
	--dataset denso \
	--sample_duration 32 \
    --learning_rate 0.01 \
    --model c3d \
	--model_depth 10 \
	--batch_size 20 \
	--n_classes 6 \
	--n_finetune_classes 6 \
	--n_threads 20 \
	--checkpoint 1 \
	--modality Depth \
	--train_crop random \
	--train_temporal ranpad \
	--temporal_pad 7 \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --true_valid \
    --no_scrop \
    --adap_temp \
    --store_name dn2fClf_js_32tp7tAt \