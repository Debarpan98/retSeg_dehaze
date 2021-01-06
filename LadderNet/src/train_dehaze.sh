#!/bin/bash
#SBATCH --account=def-punithak
#SBATCH --gres=gpu:1              # Number of GPU(s) per node
#SBATCH --cpus-per-task=12         # CPU cores/threads
#SBATCH --mem=40G               # memory per node
#SBATCH --time=0-10:00            # time (DD-HH:MM)
#SBATCH --mail-user=debarpan1998@gmail.com
#SBATCH --mail-type=ALL
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

source ladder/bin activate ladder
python retinaNN_training.py
