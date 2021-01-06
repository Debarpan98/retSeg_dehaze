#!/bin/bash
#SBATCH --account def-punithak
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=6
#SBATCH --mem=20G
#SBATCH --time=0-10:00
#SBATCH --mail-user=debarpan1998@gmail.com
#SBATCH --mail-type=ALL
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/scratch/debarpan/retina-unet/LadderNet/ladder/lib/
module load python/3.7 cuda cudnn
source /scratch/debarpan/retina-unet/LadderNet/ladder/bin/activate ladder
python retinaNN_training.py
