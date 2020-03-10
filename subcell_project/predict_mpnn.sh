protein_name=$1
test_path="dataset/splitted_csv_files_mpnn_models/${protein_name}_te.csv"
checkpoint_dir="models/mpnn/$protein_name"
preds_path="prediction_results/$protein_name.csv"

python ../predict.py --test_path $test_path \
        --checkpoint_dir $checkpoint_dir \
	--preds_path $preds_path

#python3 ../predict.py --test_path dataset/splitted_csv_files_mpnn_models/lysosome_te.csv --checkpoint_dir saved_models/lysosome --preds_path test_predict_results/lysosome.csv
