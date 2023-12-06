#!/usr/bin/bash

#SBATCH -J test_run
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=8
#SBATCH --mem-per-gpu=29G
#SBATCH -p batch_ugrad
#SBATCH -t 1-0
#SBATCH -w aurora-g7
#SBATCH -o logs/slurm-%A.out

cd /data/operati123/SSD/

python test.py \
SSD_config_class2.py \
final_class2/latest.pth \
--show-dir test_class2/
