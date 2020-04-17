data_path=$1
sep_test_path=$2
dataset_type="regression"
file_name="$(basename -- $1)"
protein_name="${file_name%.*}"
log_dir="logs/train/mpnn/$protein_name"
save_dir="models/mpnn/$protein_name"
config_path="configs/$protein_name.json"
split_type="random"
#split_type="scaffold_balanced"
epochs=30
batch_size=16
ensemble_size=1
num_folds=1
gpu=2
seed=1
log_frequency=100
metric="rmse"

python ../train.py --data_path $data_path \
	--separate_test_path $sep_test_path \
        --dataset_type $dataset_type \
        --save_dir $save_dir \
        --split_type $split_type \
        --ensemble_size $ensemble_size \
	--config_path $config_path \
        --epochs $epochs \
        --batch_size $batch_size \
        --num_folds $num_folds \
	--gpu $gpu \
	--seed $seed \
        --quiet \
        --metric $metric \
#	--save_smiles_split \

#python train.py --data_path $1 --separate_test_path $2 --dataset_type regression --save_dir $3 --split_type scaffold_balanced --ensemble_size 5 --config_path $4 --epochs 100 --batch_size 16 --multiclass_num_classes 1 --num_folds 3 --gpu 2
