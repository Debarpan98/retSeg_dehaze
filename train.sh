#!/bin/bash
#SBATCH --account def-punithak
#SBATCH --gres=gpu:2
#SBATCH --cpus-per-task=8
#SBATCH --mem=25G
#SBATCH --time=0-20:00
#SBATCH --mail-user=debarpan1998@gmail.com
#SBATCH --mail-type=ALL
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load python/3.7 cuda cudnn
source /home/debarpan/scratch/retina-unet/DUNet-retinal-vessel-detection/DUNet/bin/activate DUNet
python pytorch_train.py
