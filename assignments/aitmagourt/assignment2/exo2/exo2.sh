#!/bin/sh
#SBATCH --array=1-4
#SBATCH --partition=special


module purge
module load slurm/17.11.12
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0

echo "#!/bin/sh" >> exo2_$SLURM_ARRAY_TASK_ID.sh
echo "#SBATCH --cores=$SLURM_ARRAY_TASK_ID" >> exo2_$SLURM_ARRAY_TASK_ID.sh
echo "#SBATCH --output=exo2_$SLURM_ARRAY_TASK_ID\_out.png" >> exo2_$SLURM_ARRAY_TASK_ID.sh
echo "#SBATCH --partition=special" >> exo2_$SLURM_ARRAY_TASK_ID.sh
echo "TOTAL_POINTS=(0,1000,10000,100000,1000000)" >> exo2_$SLURM_ARRAY_TASK_ID.sh
echo "python exo2.py \$TOTAL_POINTS[$SLURM_ARRAY_TASK_ID]" >> exo2_$SLURM_ARRAY_TASK_ID.sh

sbatch exo2_$SLURM_ARRAY_TASK_ID.sh

