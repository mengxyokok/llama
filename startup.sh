torchrun --nproc_per_node 1 example.py --ckpt_dir $TARGET_FOLDER/7B --tokenizer_path $TARGET_FOLDER/tokenizer.model
CUDA_VISIBLE_DEVICES=5,6,7
torchrun --nproc_per_node 1 example.py
python -m torch.distributed.launch --nproc_per_node 1 example.py --ckpt_dir $TARGET_FOLDER/7B --tokenizer_path $TARGET_FOLDER/tokenizer.model
python -m torch.distributed.launch --nproc_per_node 1 --local_rank 7 example.py

