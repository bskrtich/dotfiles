#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source ../_common.sh

####
## Iterm2
## Install and setup Iterm2
####

# Install iterm2
brew cask install iterm2

# Specify the preferences directory
green "Setting preferences path"
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/app/iterm2"

# Tell iTerm2 to use the custom preferences in the directory
green "Setting use custom preferences path"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
