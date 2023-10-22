#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=shortq 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --job-name=exo8_partition
#SBATCH --output=exo8_partition.txt

echo "partition shortq"
