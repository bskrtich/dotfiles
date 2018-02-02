#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source ../_common.sh

####
## ZSH
## Install and setup ZSH
####

green "Installing zsh"
brew install zsh
brew install zsh-completions

# Change default shell
chsh -s /bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

green "Symlink zshrc"
cd ../../app/zsh/
rm -f ~/.zshrc
ln -s `pwd`/zshrc ~/.zshrc
