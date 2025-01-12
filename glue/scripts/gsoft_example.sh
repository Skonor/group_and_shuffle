python glue/run_glue.py \
--model_config glue/model_configs/cola/gsoft.json \
--tokenizer_name roberta-base \
--task_name cola \
--max_seq_length 128 \
--per_device_train_batch_size 32 \
--per_device_eval_batch_size 32 \
--learning_rate 8e-4 \
--num_train_epochs 25 --warmup_steps 100 \
--output_dir /tmp/cola/ --overwrite_output_dir \
--fp16 true \
--evaluation_strategy steps --eval_steps 100 \
--save_strategy steps --save_steps 10000 \
--logging_steps 10 \
--seed 42 \
--weight_decay 0.00 \
--do_train true \
--do_eval true \
--wandb_project gsoft_cola