#!/bin/bash

MODEL_PATH="/data/vlm/zxj/result/llava_video_factory-11.27/tiny-llava-Qwen2.5-3B-siglip-so400m-patch14-384-base-finetune"
MODEL_NAME="tiny-llava-Qwen2.5-3B-siglip-so400m-patch14-384-base-finetune"
EVAL_DIR="/data/vlm/zxj/data/LongVideoBench"

python -m tinyllava.eval.eval_lvbench \
    --model-path $MODEL_PATH \
    --data-folder $EVAL_DIR \
    --answers-file $EVAL_DIR/answers/$MODEL_NAME.jsonl \
    --temperature 0 \
    --conv-mode phi