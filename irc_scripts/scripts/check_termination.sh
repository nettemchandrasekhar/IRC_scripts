#!/bin/bash
# Check if ORCA jobs terminated normally
for f in 2b_IRC_TS*orca_ibo.out; do
    if grep -q "ORCA TERMINATED NORMALLY" "$f"; then
        echo "[OK]    $f"
    else
        echo "[FAIL]  $f"
    fi
done
