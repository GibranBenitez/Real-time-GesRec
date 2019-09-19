#!/bin/bash
export CUDA_VISIBLE_DEVICES=5

python ../online_test.py \
	--root_path /misc/dl001/\
	--video_path bega/datasets/AHG/rgb-images \
	--annotation_path bega/datasets/AHG/splitfiles/AHG01all_tes.json \
	--resume_path_det bega/Real-time-GesRec/AHG_results/ahgDet2_8sd2sp_resnetl-10_best.pth \
	--resume_path_clf bega/Real-time-GesRec/AHG_results/ahgClf_js_16t_resnext-101_best.pth \
	--result_path bega/Real-time-GesRec/AHG_results \
	--dataset AHG \
	--sample_duration_det 8 \
	--sample_duration_clf 16 \
	--model_det resnetl \
	--model_clf resnext \
	--model_depth_det 10 \
	--model_depth_clf 101 \
	--resnet_shortcut_det A \
	--resnet_shortcut_clf B \
	--batch_size 1 \
	--n_classes_det 2 \
	--n_finetune_classes_det 2 \
	--n_classes_clf 8 \
	--n_finetune_classes_clf 8 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality_det Depth \
	--modality_clf Depth \
	--n_val_samples 1 \
	--train_crop random \
	--test_subset test  \
	--det_strategy median \
	--det_queue_size 4 \
	--det_counter 2 \
	--clf_strategy median \
	--clf_queue_size 16 \
	--clf_threshold_pre 0.6 \
	--clf_threshold_final 0.15 \
	--stride_len 1 \
	--store_name ahgOnline_d8c16 \