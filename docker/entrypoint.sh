#!/bin/bash

cd /workdir/simulation
./run.sh > gromacs_output.log 2>&1 &
cd /workdir/mdadash

STATE_FILE="state.json"
TMP_STATE_FILE="state.json.tmp"
RAW_STATE_URL="https://raw.githubusercontent.com/PardhavMaradani/mdadash-demo/refs/heads/main/docker/mdadash/state.json"

if curl -sS -fL "$RAW_STATE_URL" -o "$TMP_STATE_FILE"; then
    mv "$TMP_STATE_FILE" "$STATE_FILE"
else
    echo "WARNING: Failed to download latest state.json from repo."
fi

uvx mdadash --topology=/workdir/simulation/input/start.gro \
    --trajectory imd://localhost:8889 \
    --dashboard-host=0.0.0.0 \
    --state-file=/workdir/mdadash/state.json
