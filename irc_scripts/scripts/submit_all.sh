#!/bin/bash
# Submit all .sh scripts to PBS queue
for f in *.sh; do
    qsub "$f"
done
