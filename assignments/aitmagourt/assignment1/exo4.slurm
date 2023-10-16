#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --job-name=exo4


jobA=$(sbatch --parsable exo4_A.slurm)
sbatch --dependency=afterok:${jobA} exo4_B.slurm


