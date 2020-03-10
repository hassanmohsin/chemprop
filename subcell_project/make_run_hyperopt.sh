for file in dataset/splitted_csv_files_mpnn_models/*_tr.csv; do
	file_name="$(basename -- $file)"
	protein_name="${file_name::-7}"
	echo "./hyperopt.sh $protein_name" 
	#echo "./hyperopt.sh $file" 
done >> run_hyperopt.sh
