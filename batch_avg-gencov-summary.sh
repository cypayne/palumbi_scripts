#!/bin/bash
#SBATCH --time=24:00:00 
#SBATCH -p spalumbi,owners,hns,normal

/scratch/PI/spalumbi/cheyenne/scripts/avg-cov-gencov-summary.py $1 $2
