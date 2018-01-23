#!/bin/bash
set -euo pipefail

####
## Setup the needed folders and files needed to run the full setup.
####

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

# Install Homebrew
#  Package manager for macOS
# https://brew.sh/
green "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

green "Installing git"
brew install git

green "Setting up repos folder"
mkdir -p /repos

cd /repos
git clone git@gitlab.com:bskrtich/mac-setup.git

yellow "You now can run the other setup scripts"
