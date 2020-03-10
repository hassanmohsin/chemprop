data_path=$1
dataset_type="classification"
file_name="$(basename -- $1)"
protein_name="${file_name%.*}"
log_dir="logs/train/rf/$protein_name"
save_dir="models/rf/$protein_name"
num_classes=1
split_type="scaffold_balanced"
epochs=50
batch_size=16
ensemble_size=1
num_folds=3
log_frequency=100
metric="f1"

python ../sklearn_train.py --data_path $data_path \
        --dataset_type $dataset_type \
        --save_dir $save_dir \
        --split_type $split_type \
        --ensemble_size $ensemble_size \
        --epochs $epochs \
        --batch_size $batch_size \
        --multiclass_num_classes $num_classes \
        --num_folds $num_folds \
        --save_smiles_split \
        --quiet \
        --metric $metric \
	    --radius 3 \
	    --num_bits 1024 \
	    --model_type "random_forest" \
	    --num_trees 500

