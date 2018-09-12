#!/bin/bash -l
#SBATCH -N 2
#SBATCH -J sample_2_nodes
#SBATCH --ntasks-per-node=8
#SBATCH --ntasks=16
srun --mpi=pmix /mnt/common/hdevarajan/sample/sample
