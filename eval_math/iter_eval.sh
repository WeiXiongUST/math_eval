# Qwen2.5-Math-Instruct Series
PROMPT_TYPE="qwen25-math-cot"
OUTPUT_TXT="test123.txt"

# Qwen2.5-Math-1.5B-Instruct
export CUDA_VISIBLE_DEVICES=0
for i in 200 220 240 260 280; do
MODEL_NAME_OR_PATH="1231czx/qwmathbase_raftpp_bz512_n8_step$i"
OUTPUT_DIR="sampling/qwen_raftpp_n8_step$i"
bash sh/eval.sh $PROMPT_TYPE $MODEL_NAME_OR_PATH $OUTPUT_DIR $OUTPUT_TXT
done
