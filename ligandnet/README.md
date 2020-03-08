## Workflow
### Train
* Run `hyperopt.sh` to optimize hyperparameters. Example: `bash hyperopt.sh <data_path>`
* Run `train.sh` to train the model using the optimized hyperparameters. Example: `bash train.sh <data_path>` 


### Training in queues
* Optimize hyperparamter and generate config files 
    - Run `make_run.sh` (use `hyperopt.sh`) to generate `run.sh`
    - Execute `run.sh` to generate the `.json` files
    - (Optional) Use `gpu_queue.py` to execute the commands in queueu with GPUs
* Train the models
    - Run `make_run.sh` (use `train.sh`) to generate `run.sh`
    - Execute `run.sh` to train the models 
    - (Optional) Use `gpu_queue.py` to execute the commands in queueu with GPUs


