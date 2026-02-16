# Ni-Su IRC ORCA Scripts

This repository contains shell scripts and templates to automate ORCA calculations for 2b intermediate IRC points.

## Structure

- `scripts/` — Shell scripts for generating input files, copying `.gbw` and `.loc` files, making Molden files, submitting jobs, and checking termination.
- `templates/` — ORCA input and PBS job script templates.

## Usage

1. **Generate input files:**
```bash
cd scripts
./make_all_inp.sh
