#!/bin/bash
#PBS -q little
#PBS -e test
#PBS -l select=1:ncpus=8
#PBS -N test
#PBS -j oe

cd "$PBS_O_WORKDIR"
echo "Working directory: $PBS_O_WORKDIR"

module load openmpi4

HOME=/home/chandu/projects/ni-su/revision/IRC/2b/doublet/ORCA/20_points/
EXEDIR=/scratch/users/chandu/
ORCAEXE='/apps/orca_4_2_1_linux_x86-64_openmpi314'

filename='__NAME__'

cp "$HOME/$filename.inp" "$EXEDIR/"
cd "$EXEDIR"
"$ORCAEXE/orca" "$EXEDIR/$filename.inp" > "$HOME/$filename.out"
