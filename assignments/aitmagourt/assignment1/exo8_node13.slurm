#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=special 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --job-name=exo8_node13
#SBATCH --output=exo8_node13.txt
#SBATCH --nodelist=node13

echo "exo8 node 13"