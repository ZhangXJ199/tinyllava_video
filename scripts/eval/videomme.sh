#!/bin/bash

MODEL_PATH="/data/vlm/zxj/result/llava_video_factory-11.22/tiny-llava-phi-2-siglip-so400m-patch14-384-base-finetune"
MODEL_NAME="tiny-llava-phi-2-siglip-so400m-patch14-384-base-finetune"
EVAL_DIR="/data/vlm/zxj/data/Video-MME"

python -m tinyllava.eval.eval_videomme \
    --model-path $MODEL_PATH \
    --question-file $EVAL_DIR/videomme/test-00000-of-00001.parquet \
    --image-folder $EVAL_DIR/data \
    --answers-file $EVAL_DIR/answers/$MODEL_NAME.jsonl \
    --temperature 0 \
    --conv-mode phi