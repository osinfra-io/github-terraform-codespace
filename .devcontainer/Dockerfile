FROM mcr.microsoft.com/vscode/devcontainers/base:1.0.13-ubuntu22.04

HEALTHCHECK NONE

RUN chsh vscode -s /usr/bin/zsh

USER vscode

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/osinfra-io/local-development-setup/v1.3.2/ubuntu/setup.sh)"

# checkov:skip=CKV_DOCKER_5: Research in #25

RUN ~/bin/update.sh
