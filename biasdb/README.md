## BiasDB

### Workflow
* Optimize hyperparamters
```
bash hyperopt.sh <data_path in data dir> <gpu_id>
```
* Train the model
```
bash train.sh <data_path in data_dir> <gpu_id>
```

### Results
```
Random Forest				
Class	Precision	Recall	F1 Score	Overall Accuracy
0	0.84	0.87	0.87	0.78
1	0.66	0.65	0.65	
2	0.67	0.55	0.6	
Avg	0.723333333333333	0.69	0.706666666666667	
XGBoost				
0	0.82	0.84	0.83	0.75
1	0.61	0.58	0.59	
2	0.64	0.64	0.64	
Avg	0.69			
MLP				
0	0.87	0.76	0.81	0.73
1	0.55	0.73	0.62	
2	0.55	0.55	0.55	 .
Avg	0.656666666666667	0.68	0.66	


GCNN			F1 Score			AUC			ACC
			Seed 0 ==> test f1 = 0.757896			Seed 1 ==> test auc = 0.686580			Seed 1 ==> test accuracy = 0.813131
			Seed 1 ==> test f1 = 0.711133			Seed 2 ==> test auc = 0.837843			Seed 2 ==> test accuracy = 0.742424
			Seed 2 ==> test f1 = 0.80335			Seed 3 ==> test auc = 0.636720			Seed 3 ==> test accuracy = 0.686869
			Seed 3 ==> test f1 = 0.751662			Seed 4 ==> test auc = 0.859431			Seed 4 ==> test accuracy = 0.863636
			Seed 4 ==> test f1 = 0.841753			Seed 5 ==> test auc = 0.839588			Seed 5 ==> test accuracy = 0.909091
			Overall test f1 = 0.773160			Overall test auc = 0.772032 			Overall test accuracy = 0.803030
```
