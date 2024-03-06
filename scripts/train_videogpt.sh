accelerate launch \
  --config_file scripts/accelerate_configs/default_config.yaml \
  train_scripts/train_videogpt.py \
  --do_train \
  --seed 1234 \
  --data_path UCF-101 \
  --per_device_train_batch_size 8 \
  --gradient_accumulation_steps 8 \
  --learning_rate 1e-5 \
  --weight_decay 0. \
  --num_train_epochs 2 \
  --embedding_dim 512 \
  --lr_scheduler_type cosine \
  --max_grad_norm 1.0 \
  --save_strategy steps \
  --save_total_limit 5 \
  --logging_steps 5 \
  --save_steps 500 \
  --n_codes 2048 \
  --n_hiddens 240 \
  --n_res_layers 4 \
  --downsample "4,4,4" \
  --resolution 128 \
  --sequence_length 16 \
  --output_dir results/videogpt \
  --report_to tensorboard