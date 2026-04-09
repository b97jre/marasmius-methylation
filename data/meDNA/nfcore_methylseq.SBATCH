#!/bin/bash -l
#SBATCH -A naiss2024-5-85
#SBATCH -J nfcore_methylSeq
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
cd /cfs/klemming/projects/supr/sllstore2017101/Johan/Marasmius/meDNA

# Run nexflow.
nextflow run nf-core/methylseq -r 2.6.0 -profile pdc_kth -params-file nf-params.meDNA.json

