#!/bin/bash -l
#SBATCH -A naiss2024-5-85
#SBATCH -J nfcore_RNASeq
#SBATCH -p shared
#SBATCH -t 24:00:00
#SBATCH --error=reports/%x.%j.StdErr
#SBATCH --output=reports/%x.%j.StdOut


# Load modules 
module load PDC
module load singularity
module load java

#activate conda enviroment
conda activate env_nf 

# Go to working directory
cd /cfs/klemming/projects/supr/sllstore2017101/Johan/Marasmius/RNA

# Run nexflow.
nextflow run nf-core/rnaseq -r 3.14.0 -profile pdc_kth -params-file nf-params.RNA.json
