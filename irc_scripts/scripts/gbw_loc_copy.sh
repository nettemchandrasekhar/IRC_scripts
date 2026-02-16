#!/bin/bash
# Copy .gbw and .loc files from scratch to current directory

for f in /scratch/users/chandu/4b_IRC_TS*orca_ibo.gbw; do
    cp "$f" .
done

for f in /scratch/users/chandu/4b_IRC_TS*orca_ibo.loc; do
    cp "$f" .
done
