#!/bin/bash
export CUDA_VISIBLE_DEVICES=5

python ../online_testC3D.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01all_tes.json \
	--resume_path_clf bega/Real-time-GesRec/AHG_results/ahgClf_js2_24tall_c3d-10_best.pth \
	--result_path bega/Real-time-GesRec/AHG_results \
	--dataset AHG \
	--sample_duration_clf 24 \
	--model_clf c3d \
	--model_depth_clf 10 \
	--batch_size 1 \
	--n_classes_clf 9 \
	--n_finetune_classes_clf 9 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality_clf Depth \
	--n_val_samples 1 \
	--test_subset test  \
	--clf_strategy raw \
	--stride_len 25 \
	--clf_threshold_final 0.5 \
	--store_name ahgOnline3_C3D24 \