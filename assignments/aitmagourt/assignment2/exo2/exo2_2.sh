#!/bin/sh
#SBATCH --cores=2
#SBATCH --output=exo2_2\_out.png
#SBATCH --partition=special
TOTAL_POINTS=(0,1000,10000,100000,1000000)
python exo2.py $TOTAL_POINTS[2]
