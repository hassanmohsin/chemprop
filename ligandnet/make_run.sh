for file in ../../ligandnet2/pharos_database/classification_data/*.csv; do
	echo "./train_rf.sh $file" 
	#echo "./hyperopt.sh $file" 
done >> run.sh
