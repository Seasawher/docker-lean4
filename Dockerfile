FROM buildpack-deps:mantic-curl

# "stable" or "nightly"
ARG LEAN_VERSION

ENV ELAN_HOME=/usr/local/elan \
    PATH=/usr/local/elan/bin:$PATH

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain leanprover/lean4:${LEAN_VERSION}; \
    chmod -R a+w $ELAN_HOME; \
    elan --version; \
    lean --version; \
    leanc --version; \
    lake --version;
