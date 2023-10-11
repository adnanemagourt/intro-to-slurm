#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1 # request 1 node (optional since default=1)
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=1 # request 1 cpu (core, thread) per task
#SBATCH --mem=4G
#SBATCH --array=1-10%2
#SBATCH --job-name=array_job
#SBATCH --output=output.txt


LINE=$(sed -n "${SLURM_ARRAY_TASK_ID}p" config.txt)
IFS=$'\t' read -r -a ARRAY <<< "$LINE"

TaskID=${ARRAY[0]}
SampleName=${ARRAY[1]}
Sex=${ARRAY[2]}

echo "This is array task ${TaskID}, the sample name is ${SampleName} and the sex is ${Sex}."
