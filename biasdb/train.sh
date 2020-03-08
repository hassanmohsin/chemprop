data_path=$1
dataset_type="classification"
log_dir="logs/train"
save_dir="models"
config_path="configs/biasdb_config.json"
num_classes=4
split_type="scaffold_balanced"
epochs=100
batch_size=16
gpu=$2
ensemble_size=5
num_folds=5
log_frequency=100
metric="f1"

python ../train.py --data_path $data_path \
        --dataset_type $dataset_type \
        --save_dir $save_dir \
        --split_type $split_type \
        --ensemble_size $ensemble_size \
        --config_path $config_path \
        --epochs $epochs \
        --batch_size $batch_size \
        --multiclass_num_classes $num_classes \
        --num_folds $num_folds \
        --save_smiles_split \
        --gpu $gpu \
        --quiet \
        --metric $metric
        #--log_frequency $log_frequency


#python train.py --data_path $1 --dataset_type classification --save_dir $2 --split_type scaffold_balanced --ensemble_size 5 --config_path $3 --epochs 200 --batch_size 16 --multiclass_num_classes 1 --num_folds 5 --gpu 0
