#!/bin/bash 	#dl04
export CUDA_VISIBLE_DEVICES=5

python ../offline_test.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01all_tes.json \
	--result_path bega/Real-time-GesRec/AHG_results \
	--resume_path bega/Real-time-GesRec/AHG_results/ahgClf_js_32tall_c3d-10_best.pth \
	--dataset AHG \
	--sample_duration 32 \
    --model c3d \
	--model_depth 10 \
	--batch_size 16 \
	--n_classes 9 \
	--n_finetune_classes 9 \
	--n_threads 16 \
	--modality Depth \
	--n_val_samples 1 \
	--test_subset test \
    --store_name ahgClf_js_32tall \
