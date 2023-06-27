FROM buildpack-deps:mantic-curl

ENV ELAN_HOME=/usr/local/elan \
    PATH=/usr/local/elan/bin:$PATH \
    LEAN_VERSION=leanprover/lean4:nightly

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain $LEAN_VERSION; \
    chmod -R a+w $ELAN_HOME; \
    elan --version; \
    lean --version; \
    leanc --version; \
    lake --version;