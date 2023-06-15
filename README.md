# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/201473670-e0e6bdeb-742f-4be1-a47a-3506309620a3.png"> GitHub Codespace for Terraform IaC development

**[GitHub Actions](https://github.com/osinfra-io/github-terraform-codespace/actions):**

[![Dependabot](https://github.com/osinfra-io/github-terraform-codespace/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/github-terraform-codespace/actions/workflows/dependabot.yml)

## Blazing fast cloud IaC developer environments

Visual Studio Code backed by high performance VMs that start in seconds.

*Use the full power of Visual Studio Code, including the editor, terminal, debugger, version control, settings sync, and the entire ecosystem of extensions. Work in the browser or hand off to your desktop.*

### Codespaces documentation

When using any development environment, customizing the settings and tools to your preferences and workflows is an important step. Codespaces allows for two main ways of personalizing your codespaces.

[Settings Sync](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-codespaces-for-your-account#settings-sync) - You can use and share Visual Studio Code settings between Codespaces and other instances of Visual Studio Code.

[Dotfiles](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-codespaces-for-your-account#dotfiles) – You can use a `dotfiles` repository to specify scripts, shell preferences, and other configurations.

Codespaces personalization applies to any codespace you create.

[Managing access to other repositories within your codespace](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-repository-access-for-your-codespaces)

## Goals

We recommend forking this repository for use. Its purpose is to be a baseline, something you can maintain on your own and modify to fit your organization's needs. Once you go down the road of Infrastructure as Code (IaC), what you will find is onboarding developers takes time and can be confusing for people new to development, and that will limit contributions.

- Standardized IaC developer environments
- Simple onboarding so new IaC developers can contribute easier

## Core tools

We primarily use [Homebrew](https://github.com/Homebrew/brew) *The Missing Package Manager for macOS (or Linux)* for package management since most open-source tools support it. It saves time vs. having to manage different ways of installing various open-source tools.

### Cloud providers tools

#### Google Cloud SDK

The [Google Cloud SDK](https://cloud.google.com/sdk) provides tools and libraries for interacting with Google Cloud products and services. It manages authentication, local configuration, developer workflow, interactions with Google Cloud APIs.

### Open-source tools

- [chef-inspec](https://github.com/inspec/inspec)
- [github-cli](https://github.com/cli/cli)
- [infracost](https://github.com/infracost/infracost)
- [kitchen-terraform](https://github.com/newcontext-oss/kitchen-terraform)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform](https://github.com/hashicorp/terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### Zsh stuff

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
