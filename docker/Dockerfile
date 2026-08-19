FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    libgomp1 \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY gromacs /usr/local/gromacs
COPY simulation /workdir/simulation
COPY mdadash /workdir/mdadash
COPY entrypoint.sh /workdir/entrypoint.sh
RUN chmod +x /workdir/entrypoint.sh

ENV PATH="/usr/local/gromacs/bin:${PATH}"
ENV LD_LIBRARY_PATH="/usr/local/gromacs/lib"

WORKDIR /workdir

ENTRYPOINT ["/workdir/entrypoint.sh"]
