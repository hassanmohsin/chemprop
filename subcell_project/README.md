## Workflow
### Tune, Train and Predict (NOT IN queues)
* Run `hyperopt.sh` to optimize hyperparameters. Example: `bash hyperopt.sh <subcell_location_name>`
	- Example command: `bash hyperopt.sh actin_filaments`
* Run `train_mpnn.sh` to train the model using the optimized hyperparameters. Example: `bash train_mpnn.sh <subcell_location_name>`
	- Example command: `bash train_mpnn.sh actin_filaments` 
* Run `predict_mpnn.sh` to make predictions on the trained models. Example: `bash predict_mpnn.sh <subcell_location_name>`
	- Example command: `bash predict_mpnn.sh actin_filaments`

### Tuning, Training and Predictions in queues
* Optimize hyperparamter and generate config files 
    - Run `make_run_hyperopt.sh` (`hyperopt.sh` will be used) to generate `run_hyperopt.sh`
    - Execute `run_hyperopt.sh` to generate the `.json` files
    - (Optional) Use `gpu_queue.py` to execute the commands in queueu with GPUs
* Train the models
    - Run `make_run_train.sh` (`train_mpnn.sh` will be used) to generate `run_train.sh`
    - Execute `run_train.sh` to train the models 
    - (Optional) Use `gpu_queue.py` to execute the commands in queueu with GPUs
* Predict on models
    - Run `make_run_predict.sh` (`predict_mpnn.sh` will be used) to generate `run_predict.sh`
    - Execute `run_predict.sh` to make predictions
    - (Optional) Use `gpu_queue.py` to execute the commands in queueu with GPUs

