#!/bin/bash
# Rename .loc files to _loc.gbw
for f in *_orca_ibo.loc; do
    cp "$f" "${f%.loc}_loc.gbw"
done
