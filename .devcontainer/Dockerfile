FROM mcr.microsoft.com/vscode/devcontainers/base:1.0.16-ubuntu22.04

HEALTHCHECK NONE

RUN chsh vscode -s /usr/bin/zsh

USER vscode

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/osinfra-io/local-development-setup/v1.3.3/ubuntu/setup.sh)"

RUN ~/bin/update.sh
