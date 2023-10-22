#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --job-name=exo8_exclude
#SBATCH --output=exo8_exclude.txt
#SBATCH --exclude=node02,node03,node15


echo "exo8 exclude node02 node03 node 15"