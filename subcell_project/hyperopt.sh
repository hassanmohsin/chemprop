protein_name=$1
data_path="dataset/splitted_csv_files_mpnn_models/${protein_name}_tr.csv"
dataset_type="classification"
num_iter=20
config_save_path="configs/$protein_name.json"
log_dir="logs/hyperopt/mpnn/$protein_name"
epochs=25
batch_size=50
metric=cohen_k
gpu=$2
log_frequency=100

python ../hyperparameter_optimization.py \
        --data_path $data_path \
	--metric $metric \
        --dataset_type $dataset_type \
        --num_iter $num_iter \
        --config_save_path $config_save_path \
        --epochs $epochs \
        --batch_size $batch_size \
        --log_dir $log_dir 

#python hyperparameter_optimization.py --data_path "$1" --dataset_type classification --num_iter 20 --config_save_path $(basename -- "$1") --gpu $2 --epochs 30 --batch_size 16 --log_dir $(basename -- "$1")
#python3 ../train.py --data_path dataset/splitted_csv_files_mpnn_models/lysosome_tr.csv --dataset_type classification --separate_val_path dataset/splitted_csv_files_mpnn_models/lysosome_va.csv --separate_test_path dataset/splitted_csv_files_mpnn_models/lysosome_te.csv --epoch 50 --save_dir saved_models/lysosome --metric cohen_k
