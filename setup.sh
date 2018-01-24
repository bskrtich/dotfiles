#!/bin/bash
set -euo pipefail

####
## Setup the needed folders and files needed to run the full setup.
####

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

# ref: https://askubuntu.com/a/30157/8698
if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

if [ $SUDO_USER ]; then
    real_user=$SUDO_USER
else
    real_user=$(whoami)
fi

# Install Homebrew
#  Package manager for macOS
# https://brew.sh/
green "Installing Homebrew"
sudo -u $real_user /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

green "Installing git"
brew install git

green "Setting up repos folder"
mkdir -p /repos

cd /repos
git clone git@gitlab.com:bskrtich/mac-setup.git

yellow "You now can run the other setup scripts"
