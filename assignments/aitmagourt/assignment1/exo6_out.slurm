#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --job-name=exo6_out
#SBATCH --output=ex6_out.txt


python exo6_out.py

