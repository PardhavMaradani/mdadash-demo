#!/bin/bash

cd /workdir/simulation
./run.sh > gromacs_output.log 2>&1 &
cd
uvx mdadash --topology=/workdir/simulation/input/start.gro \
    --trajectory imd://localhost:8889 \
    --dashboard-host=0.0.0.0 \
    --state-file=/workdir/mdadash/state.json
