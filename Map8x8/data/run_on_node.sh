#!/bin/bash
#SBATCH --account=rrg-lelis
#SBATCH --time=72:00:00
#SBATCH --job-name=map8x8Split
#SBATCH --cpus-per-task=12
#SBATCH --mem=8G
#SBATCH --output=%x-%j.out

module load java/17.0.2
module load python/3.11.2

#virtualenv --no-download $SLURM_TMPDIR/env
venv/bin/activate

#pip install --no-index --upgrade pip
#pip install setuptools==65.5.0 wheel==0.38.4
#pip install --upgrade torch
#pip install numpy==1.24.2+computecanada
#pip install --upgrade rl_algo_impls-0.0.38-py3-none-any.whl

java -jar MicroRTSCompetition_frag.jar
