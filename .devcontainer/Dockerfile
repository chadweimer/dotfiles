FROM ubuntu:22.04

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
        git \
        zsh \
        curl \
        ca-certificates \
        openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -ms /bin/zsh vscode

USER vscode
