data_path=$1
dataset_type="classification"
file_name="$(basename -- $1)"
protein_name="${file_name%.*}"
log_dir="logs/train/$protein_name"
save_dir="models/$protein_name"
config_path="configs/$protein_name.json"
num_classes=1
split_type="scaffold_balanced"
epochs=10
batch_size=16
gpu=$2
ensemble_size=5
num_folds=3
log_frequency=100

python train.py --data_path $data_path \
        --dataset_type $dataset_type \
        --save_dir $save_dir \
        --split_type $split_type \
        --ensemble_size $ensemble_size \
        --config_path $config_path \
        --epochs $epochs \
        --batch_size $batch_size \
        --multiclass_num_classes $num_classes \
        --num_folds $num_folds \
        --gpu $gpu \
        --quiet
        #--log_frequency $log_frequency


#python train.py --data_path $1 --dataset_type classification --save_dir $2 --split_type scaffold_balanced --ensemble_size 5 --config_path $3 --epochs 200 --batch_size 16 --multiclass_num_classes 1 --num_folds 5 --gpu 0
