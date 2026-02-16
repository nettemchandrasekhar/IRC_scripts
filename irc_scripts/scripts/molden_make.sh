#!/bin/bash
# Convert ORCA .gbw files to Molden format
ORCA2MKL=/apps/orca_4_2_1_linux_x86-64_openmpi314/orca_2mkl

for f in 2b_IRC_TS*_orca_ibo_loc.gbw; do
    base="${f%.gbw}"   # remove .gbw extension
    echo "Converting $base.gbw → Molden"
    "$ORCA2MKL" "$base" -molden
done
