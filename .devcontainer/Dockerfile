FROM mcr.microsoft.com/vscode/devcontainers/base:1.0.21-ubuntu22.04

HEALTHCHECK NONE

RUN chsh vscode -s /usr/bin/zsh

USER vscode

ARG GIT_URL=https://raw.githubusercontent.com/osinfra-io/local-development-setup/v1.5.0/ubuntu

RUN /bin/bash -c "$(curl -fsSL ${GIT_URL}/setup.sh)"
RUN /bin/bash -c "$(curl -fsSL -o /home/vscode/.p10k.zsh ${GIT_URL}/.p10k.zsh)"
