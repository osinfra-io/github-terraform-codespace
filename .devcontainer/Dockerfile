FROM mcr.microsoft.com/vscode/devcontainers/base:0.202.3-ubuntu

HEALTHCHECK NONE

RUN chsh vscode -s /usr/bin/zsh

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
	| tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
	&& curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

RUN apt update \
	&& apt -y upgrade \
	&& apt -y install --no-install-recommends \
	apt-transport-https \
	build-essential \
	google-cloud-sdk \
	&& rm -rf /var/lib/apt/lists/*

USER vscode

COPY setup.sh .
RUN /bin/bash setup.sh

RUN ~/bin/update.sh
