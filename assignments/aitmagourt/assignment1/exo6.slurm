#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --job-name=exo6


sbatch exo6_out.slurm

sbatch exo6_err.slurm

