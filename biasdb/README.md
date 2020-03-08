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
Fold 0
Model 0 best validation f1 = 0.828491 on epoch 55
Model 0 test f1 = 0.760524
Model 1 best validation f1 = 0.833176 on epoch 43
Model 1 test f1 = 0.761893
Model 2 best validation f1 = 0.842052 on epoch 50
Model 2 test f1 = 0.726192
Model 3 best validation f1 = 0.833540 on epoch 48
Model 3 test f1 = 0.747404
Model 4 best validation f1 = 0.818251 on epoch 24
Model 4 test f1 = 0.742520
Ensemble test f1 = 0.757896
Fold 1
Model 0 best validation f1 = 0.766578 on epoch 11
Model 0 test f1 = 0.761472
Model 1 best validation f1 = 0.781574 on epoch 8
Model 1 test f1 = 0.698980
Model 2 best validation f1 = 0.764202 on epoch 3
Model 2 test f1 = 0.697949
Model 3 best validation f1 = 0.781898 on epoch 12
Model 3 test f1 = 0.716357
Model 4 best validation f1 = 0.782526 on epoch 9
Model 4 test f1 = 0.728686
Ensemble test f1 = 0.711133
Fold 2
Model 0 best validation f1 = 0.828212 on epoch 33
Model 0 test f1 = 0.795334
Model 1 best validation f1 = 0.822805 on epoch 86
Model 1 test f1 = 0.807374
Model 2 best validation f1 = 0.820217 on epoch 41
Model 2 test f1 = 0.800735
Model 3 best validation f1 = 0.818488 on epoch 15
Model 3 test f1 = 0.810468
Model 4 best validation f1 = 0.827927 on epoch 22
Model 4 test f1 = 0.820899
Ensemble test f1 = 0.803357
Fold 3
Model 0 best validation f1 = 0.777125 on epoch 35
Model 0 test f1 = 0.747790
Model 1 best validation f1 = 0.770121 on epoch 23
Model 1 test f1 = 0.742019
Model 2 best validation f1 = 0.760061 on epoch 18
Model 2 test f1 = 0.758440
Model 3 best validation f1 = 0.777083 on epoch 24
Model 3 test f1 = 0.740864
Model 4 best validation f1 = 0.771053 on epoch 62
Model 4 test f1 = 0.749051
Ensemble test f1 = 0.751662
Fold 4
Model 0 best validation f1 = 0.783279 on epoch 75
Model 0 test f1 = 0.836734
Model 1 best validation f1 = 0.800926 on epoch 34
Model 1 test f1 = 0.852473
Model 2 best validation f1 = 0.785657 on epoch 34
Model 2 test f1 = 0.848751
Model 3 best validation f1 = 0.791097 on epoch 36
Model 3 test f1 = 0.846694
Model 4 best validation f1 = 0.766978 on epoch 52
Model 4 test f1 = 0.831269
Ensemble test f1 = 0.841753
5-fold cross validation
Seed 0 ==> test f1 = 0.757896
Seed 1 ==> test f1 = 0.711133
Seed 2 ==> test f1 = 0.803357
Seed 3 ==> test f1 = 0.751662
Seed 4 ==> test f1 = 0.841753
Overall test f1 = 0.773160 +/- 0.045076
```
