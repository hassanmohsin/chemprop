from joblib import Parallel, delayed
import queue
import os
import sys

# Define number of GPUs available
N_GPU = 8

# Put indices in queue
q = queue.Queue(maxsize=N_GPU)
for i in range(N_GPU):
    q.put(i)

def runner(cmd):
    gpu = q.get()
    print(cmd, gpu)
    # Put here your job cmd
    #cmd = "python train.py %s" % x
    os.system("CUDA_VISIBLE_DEVICES=%d %s" % (gpu, cmd))
    # return gpu id to queue
    q.put(gpu)


if __name__=='__main__':
    # read the command
    if len(sys.argv) != 2:
        print('Usage: python gpu_queue.py <n_gpu> <command_file>')
        exit(1)
   
    command_file = sys.argv[1]
    commands = open(command_file, 'r').read().splitlines()
    Parallel(n_jobs=N_GPU, backend="threading")(delayed(runner)(cmd) for cmd in commands)
