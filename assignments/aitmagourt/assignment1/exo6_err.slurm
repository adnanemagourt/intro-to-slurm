#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --job-name=exo6
#SBATCH --err=exo6_err.txt

module purge

module load Python/3.8.6-GCCcore-10.2.0

python exo6_err.py

