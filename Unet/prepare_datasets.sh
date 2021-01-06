#!/bin/bash
#SBATCH --account def-punithak
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=6
#SBATCH --mem=10G
#SBATCH --time=0-8:00
#SBATCH --mail-user=debarpan1998@gmail.com
#SBATCH --mail-type=ALL
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
. RV/bin/activate
python prepare_datasets_DRIVE.py
