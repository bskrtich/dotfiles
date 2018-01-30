#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

####
## Part 01
## Install needed applications for use in later parts
####

# Install Homebrew
#  Package manager for macOS
# https://brew.sh/
green "Installing/Updating Homebrew"
which -s brew
if [[ $? != 0 ]] ; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# Install Homebrew-Cask
#  Homebrew-Cask extends Homebrew allows installation
#  and management of GUI macOS applications
# https://caskroom.github.io/
green "Installing Homebrew-Cask"
brew tap caskroom/cask

# Install mas-cli
#  A simple command line interface for the Mac App Store.
# https://github.com/mas-cli/mas
green "Installing mas-cli"
brew install mas
mas signin --dialog bskrtich@gmail.com

# Install Critical Applications
green "Installing Critical Applications"
brew cask install chrome
brew cask install dropbox

yellow "Please sign in to Chrome, Last Pass and Dropbox before preceding"
