data_path=$1
dataset_type="classification"
num_iter=5
file_name="$(basename -- $1)"
protein_name="${file_name%.*}"
config_save_path="configs/$protein_name.json"
log_dir="logs/hyperopt/$protein_name"
num_classes=1
split_type="scaffold_balanced"
epochs=10
batch_size=16
gpu=$2
log_frequency=100

python hyperparameter_optimization.py \
        --data_path $data_path \
        --dataset_type $dataset_type \
        --num_iter $num_iter \
        --config_save_path $config_save_path \
        --multiclass_num_classes $num_classes --split_type $split_type \
        --gpu $gpu \
        --epochs $epochs \
        --batch_size $batch_size \
        --log_dir $log_dir \
        --log_frequency $log_frequency

#python hyperparameter_optimization.py --data_path "$1" --dataset_type classification --num_iter 20 --config_save_path $(basename -- "$1") --multiclass_num_classes 1 --split_type scaffold_balanced --gpu $2 --epochs 30 --batch_size 16 --log_dir $(basename -- "$1")

