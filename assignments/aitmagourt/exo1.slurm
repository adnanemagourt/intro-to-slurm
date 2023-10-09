#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --time=00:05:00 # request 1 day; Format: days-hours:minutes:seconds
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=1 # request 1 task (command) per node
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=5G

module purge

echo "Hello, SLURM!" > file.txt