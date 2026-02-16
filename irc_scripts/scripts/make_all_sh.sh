#!/bin/bash
# Generate PBS submission scripts from template

# +00 to +20
for i in {00..20}; do
    name="2b_IRC_TS+${i}_orca_ibo"
    sed "s/__NAME__/$name/" ../templates/template_ibo.sh > "${name}.sh"
done

# -01 to -20
for i in {01..20}; do
    name="2b_IRC_TS-${i}_orca_ibo"
    sed "s/__NAME__/$name/" ../templates/template_ibo.sh > "${name}.sh"
done
