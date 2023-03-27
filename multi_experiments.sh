# clip_benchmark eval --dataset mscoco_captions \
#     --dataset_root ../root/mscoco \
#     --task zeroshot_retrieval \
#     --model selfsustain_ViT-B-32 \
#     --pretrained ../open_clip/isti_test/2023_03_24-15_55_34-model_selfsustain_ViT-B-32-lr_0.0005-b_32-j_2-p_amp/checkpoints/epoch_21.pt \
#     --output ./isti_results.json
    
# clip_benchmark eval --dataset mscoco_captions \
#     --dataset_root ../root/mscoco \
#     --task zeroshot_retrieval \
#     --model selfsustain_RN50 \
#     --pretrained ../open_clip/isti_test/2023_03_27-15_38_58-model_selfsustain_RN50-lr_0.0005-b_32-j_2-p_amp/checkpoints/epoch_21.pt \
#     --output ./isti_rn50_results.json

# clip_benchmark eval --dataset mscoco_captions \
#     --dataset_root ../root/mscoco \
#     --task zeroshot_retrieval \
#     --model ViT-B-32 \
#     --pretrained ../open_clip/vit_test/2023_03_27-12_05_56-model_ViT-B-32-lr_0.0005-b_32-j_2-p_amp/checkpoints/epoch_21.pt \
#     --output ./vit_results.json

# clip_benchmark eval --dataset mscoco_captions \
#     --dataset_root ../root/mscoco \
#     --task zeroshot_retrieval \
#     --model ViT-B-32 --output ./pretrained_vit_results.json
    
clip_benchmark eval --dataset mscoco_captions \
    --dataset_root ../root/mscoco \
    --task zeroshot_retrieval \
    --model coca_ViT-B-32 \
    --pretrained laion2B-s13B-b90k \
    --output ./pretrained_coca_results.json

clip_benchmark build \
    ./isti_results.json \
    ./vit_results.json \
    ./isti_rn50_results.json \
    ./pretrained_vit_results.json \
    ./pretrained_coca_results.json \
    --output ./all_results.csv