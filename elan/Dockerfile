FROM buildpack-deps:mantic-curl

ENV ELAN_HOME=/usr/local/elan \
    PATH=/usr/local/elan/bin:$PATH

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain none; \
    chmod -R a+w $ELAN_HOME; \
    elan --version;