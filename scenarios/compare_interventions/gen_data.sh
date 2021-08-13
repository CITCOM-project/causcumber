#!/bin/bash
#SBATCH --ntasks=4
#SBATCH --time=03:00:00
#SBATCH --mem-per-cpu=1000

export SLURM_EXPORT_ENV=ALL
module load Anaconda3/5.3.0

# We assume that the conda environment 'myexperiment' has already been created
source activate causecumber
srun python generate_observational_data.py 1000 "results/data-1000-$1.csv"
