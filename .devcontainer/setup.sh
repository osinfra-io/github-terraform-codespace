#!/usr/bin/env zsh

# Homebrew
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Tools
brew tap bridgecrewio/tap

tools=(
    awscli
    azure-cli
    bridgecrewio/tap/yor
    checkov
    gcc
    gcc@5
    gh
    go
    hashicorp/tap/terraform
    infracost
    kubectl
    terraform-docs
    pre-commit
    romkatv/powerlevel10k/powerlevel10k
    ruby
    zsh-syntax-highlighting
)

for tool in "${tools[@]}"
do
    brew install ${tool}
done

# Ruby Tools
export RUBYOPT="-W:no-deprecated -W:no-experimental"

echo 'gem: --no-document' > ~/.gemrc

cat << EOF > ~/Gemfile
source "https://rubygems.org/"
gem "kitchen-terraform"
gem "inspec"
gem "rubocop"
gem "cookstyle"
EOF

export BUNDLE_GEMFILE="~/Gemfile"

gem install bundle
gem update
bundle update

# Create Update Script
mkdir -p ~/bin
cat << EOF > ~/bin/update.sh
#!/usr/bin/env zsh

source ~/.zshrc

# Ruby
yes | gem update --system
yes | gem update
yes | gem cleanup
yes | bundle update

# Ubuntu
sudo apt update
sudo apt -y upgrade
sudo apt -y autoremove

# Brew
yes | brew update
yes | brew upgrade
yes | brew autoremove
yes | brew cleanup

# Oh-my-zsh
omz update
EOF

chmod 755 ~/bin/update.sh

# Shell Setup
# NOTE: This is more for running the docker container natively than for the Codespace. The Codespace should use your dotfiles.
# https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-codespaces-for-your-account#dotfiles
echo 'source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo 'source /home/linuxbrew/.linuxbrew/opt/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
echo 'export GOOGLE_AUTH_SUPPRESS_CREDENTIALS_WARNINGS=true' >> ~/.zshrc
echo 'export EDITOR=vim' >> ~/.zshrc
echo 'export RUBYOPT="-W:no-deprecated -W:no-experimental"' >> ~/.zshrc
echo 'export BUNDLE_GEMFILE=$HOME/Gemfile' >> ~/.zshrc

echo -e "eval \"\$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)\"\n$(cat ~/.zshrc)" > ~/.zshrc
echo -e "export PATH=\$HOME/bin:/home/linuxbrew/.linuxbrew/lib/ruby/gems/3.0.0/bin:\$PATH\n$(cat ~/.zshrc)" > ~/.zshrc
