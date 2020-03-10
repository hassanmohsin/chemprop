protein_name=$1
data_path="dataset/splitted_csv_files_mpnn_models/${protein_name}_tr.csv"
separate_val_path="dataset/splitted_csv_files_mpnn_models/${protein_name}_va.csv"
separate_test_path="dataset/splitted_csv_files_mpnn_models/${protein_name}_te.csv"
dataset_type="classification"
log_dir="logs/train/mpnn/$protein_name"
save_dir="models/mpnn/$protein_name"
config_path="configs/$protein_name.json"
epochs=50
batch_size=50
ensemble_size=1
log_frequency=100
metric="cohen_k"

python ../train.py --data_path $data_path \
        --dataset_type $dataset_type \
	--separate_val_path $separate_val_path \
	--separate_test_path $separate_test_path \
        --save_dir $save_dir \
        --ensemble_size $ensemble_size \
        --config_path $config_path \
        --epochs $epochs \
        --batch_size $batch_size \
        --metric $metric

#python train.py --data_path $1 --dataset_type classification --save_dir $2 --split_type scaffold_balanced --ensemble_size 5 --config_path $3 --epochs 200 --batch_size 16 --multiclass_num_classes 1 --num_folds 5 --gpu 0
#python3 ../train.py --data_path dataset/splitted_csv_files_mpnn_models/lysosome_tr.csv --dataset_type classification --separate_val_path dataset/splitted_csv_files_mpnn_models/lysosome_va.csv --separate_test_path dataset/splitted_csv_files_mpnn_models/lysosome_te.csv --epoch 50 --save_dir saved_models/lysosome --metric cohen_k
