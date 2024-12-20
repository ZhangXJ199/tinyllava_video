VIDEO_DATA_PATH=/data/vlm/zxj/data/mm_data/merge_data/allplus_caption.json #pretrain annotation file path
FINETUNE_VIDEO_DATA_PATH=/data/vlm/zxj/data/mm_data/merge_data/all_openqa.json #finetune annotation file path
VIDEO_PATH=/data/vlm/zxj/data/mm_data/merge_data #pretrain image dir
FINETUNE_VIDEO_PATH=//data/vlm/zxj/data/mm_data/merge_data #finetune image dir

LLM_VERSION=/data/vlm/zxj/checkpoints/gemma-2-2b-it
VT_VERSION=/data/vlm/zxj/checkpoints/siglip-so400m-patch14-384 #vision tower path in huggingface
VT_VERSION2="" #if you are not using mof vision tower, keep it empty
CN_VERSION=resamplerwithpe #connector type, other options are: qformer, resampler, etc
CONV_VERSION=gemma
VERSION=base
TRAIN_RECIPE=common
MODEL_MAX_LENGTH=3072 #max model length for llm
NUM_FRAME=16 # -1 means 1fps
NUM_QUERY=512


bash scripts/train/gemma/pretrain_gemma_video.sh "$VIDEO_DATA_PATH" "$VIDEO_PATH" "$LLM_VERSION" "$VT_VERSION" "$VT_VERSION2" "$CN_VERSION" "$VERSION" "$TRAIN_RECIPE" "$MODEL_MAX_LENGTH" "$NUM_FRAME" "$NUM_QUERY"
bash scripts/train/gemma/finetune_gemma_video.sh "$FINETUNE_VIDEO_DATA_PATH" "$FINETUNE_VIDEO_PATH" "$LLM_VERSION" "$VT_VERSION" "$VT_VERSION2" "$CN_VERSION" "$CONV_VERSION" "$VERSION" "$TRAIN_RECIPE" "$MODEL_MAX_LENGTH" "$NUM_FRAME" "$NUM_QUERY"
