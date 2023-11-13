#!/bin/sh
#SBATCH --array=1-128%1
#SBATCH --output=exo1_out.txt


module purge
module load slurm/17.11.12
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0


printf "#!/bin/sh \n#SBATCH --cores=%s \n#SBATCH --output=exo1_%s_out.txt \npython exo1.py" $SLURM_ARRAY_TASK_ID $SLURM_ARRAY_TASK_ID > exo1_$SLURM_ARRAY_TASK_ID.sh
sbatch exo1_$SLURM_ARRAY_TASK_ID.sh
