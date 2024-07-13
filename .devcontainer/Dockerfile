FROM ubuntu:24.04

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
        git \
        zsh \
        curl \
        ca-certificates \
        openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && chsh -s /bin/zsh ubuntu

USER ubuntu
