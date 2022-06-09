FROM mcr.microsoft.com/vscode/devcontainers/base:0.202.3-ubuntu

HEALTHCHECK NONE

RUN chsh vscode -s /usr/bin/zsh

USER vscode

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/osinfra-io/local-development-setup/main/ubuntu/setup.sh)"

RUN ~/bin/update.sh
