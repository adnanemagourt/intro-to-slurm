#!/bin/sh
#SBATCH --cores=3
#SBATCH --output=exo2_3\_out.png
#SBATCH --partition=special
TOTAL_POINTS=(0,1000,10000,100000,1000000)
python exo2.py $TOTAL_POINTS[3]
