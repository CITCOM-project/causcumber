#!/bin/bash
#SBATCH --ntasks=4
#SBATCH --time=06:00:00
#SBATCH --mem-per-cpu=1000

export SLURM_EXPORT_ENV=ALL
module load Anaconda3/5.3.0

# We assume that the conda environment 'causecumber' has already been created
source activate causecumber
srun python covariate_imbalance_proof_of_concept.py 1 30 results_$1.csv