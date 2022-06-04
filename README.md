# GitHub Codespace for Terraform IaC development

## Blazing fast cloud IaC developer environments

Visual Studio Code backed by high performance VMs that start in seconds.

*Use the full power of Visual Studio Code, including the editor, terminal, debugger, version control, settings sync, and the entire ecosystem of extensions. Work in the browser or hand off to your desktop.*

### Goals

- Standardized IaC developer environments
- Simple onboarding so new IaC developers can contribute easier

## Core tools

We primarily use [Homebrew](https://github.com/Homebrew/brew) *The Missing Package Manager for macOS (or Linux)* for package management since most open-source tools support it. It saves time vs. having to manage different ways of installing various open-source tools.

### Cloud providers

#### AWS CLI

The [AWS command-line interface](https://aws.amazon.com/cli) is a unified tool to manage your AWS services. With just one tool to download and configure, you can control multiple AWS services from the command line and automate them through scripts.

#### Azure CLI

The [Azure command-line interface](https://docs.microsoft.com/en-us/cli/azure) is a set of commands used to create and manage Azure resources. The Azure CLI is available across Azure services and is designed to get you working quickly with Azure, with an emphasis on automation.

#### Google Cloud SDK

The [Google Cloud SDK](https://cloud.google.com/sdk) provides tools and libraries for interacting with Google Cloud products and services. It manages authentication, local configuration, developer workflow, interactions with Google Cloud APIs.

### Open-source tools

- [checkov](https://github.com/bridgecrewio/checkov)
- [chef-inspec](https://github.com/inspec/inspec)
- [inspec-gcp](https://github.com/inspec/inspec-gcp)
- [inspec-aws](https://github.com/inspec/inspec-aws)
- [inspec-azure](https://github.com/inspec/inspec-azure)
- [kitchen-terraform](https://github.com/newcontext-oss/kitchen-terraform)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)
- [yor](https://github.com/bridgecrewio/yor)

## Local development environments

If you'd still like to run your environment locally and not use Codespaces, we have the documentation to do that here:

- [Windows development environment](https://docs.osinfra.io/development-setup/windows-wsl-setup)
- [Ubuntu development environment](https://docs.osinfra.io/development-setup/ubuntu-setup)
