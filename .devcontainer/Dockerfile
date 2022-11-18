FROM mcr.microsoft.com/vscode/devcontainers/base:0.203.0-ubuntu

HEALTHCHECK NONE

RUN chsh vscode -s /usr/bin/zsh

USER vscode

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/osinfra-io/local-development-setup/v1.0.0/ubuntu/setup.sh)"

RUN ~/bin/update.sh
