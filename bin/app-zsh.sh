#!/bin/bash
set -euo pipefail

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

####
## ZSH
## Install and setup ZSH
####

brew install zsh zsh-completions

# I am not sure that I need to change my default shell since
# it is set in iterm2 prefrences
#chsh -s $(which zsh)

To activate these completions, add the following to your .zshrc:

  fpath=(/usr/local/share/zsh-completions $fpath)

You may also need to force rebuild `zcompdump`:

  rm -f ~/.zcompdump; compinit
