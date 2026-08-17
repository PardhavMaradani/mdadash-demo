# `mdadash` Demo

## Docker

```sh
docker run -it -p 8000:8000 ghcr.io/pardhavmaradani/mdadash-demo:latest
```

Access the dashboard locally at: http://localhost:8000

<!--
## GitHub Codespaces

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/PardhavMaradani/mdadash-demo)
-->

## Demo Setup

Here are the contents of this container:

- GROMACS built on Ubuntu with IMDv3 support as per the [imd-workshop-2025](https://github.com/amruthesht/imd-workshop-2025) instructions [here](https://github.com/amruthesht/imd-workshop-2025#from-source)
- Sample GROMACS simulation as per imd-workshop-2025 instuctions [here](https://github.com/amruthesht/imd-workshop-2025/tree/main/workshop/sample_simulation/GROMACS)
- [mdadash](https://github.com/MDAnalysis/mdadash) installed and run through `uvx` pointing to the above simulation. See [entrypoint.sh](docker/entrypoint.sh)
