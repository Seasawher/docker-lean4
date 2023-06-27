FROM buildpack-deps:mantic-curl AS builder

ENV ELAN_HOME=/usr/local/elan \
    PATH=/usr/local/elan/bin:$PATH

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain none;



FROM busybox:latest

ENV ELAN_HOME=/usr/local/elan \
    PATH=/usr/local/elan/bin:$PATH

SHELL ["/bin/sh", "-c"]

COPY --from=builder $ELAN_HOME $ELAN_HOME
ENV PATH=/usr/local/elan/bin:$PATH

RUN elan --version;
