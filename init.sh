#!/bin/bash
set -euo pipefail

####
## Setup the needed folders and files needed to run the full setup.
####

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

green "Running Initial setup for a mac..."
echo ""

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

green "Installing git"
brew install git

green "Cloning mac-setup repo"
mkdir -p ~/.dotfiles
cd ~/.dotfiles
# Check if repo already exists
if [ ! -d .git ]; then
    # Anonymously clone the mac-setup repo
    git clone https://gitlab.com/bskrtich/dotfiles.git .
else
    yellow "mac-setup has already been cloned"
fi
# Set the origin to the ssh version so we can commit back to the repo
git remote set-url origin git@gitlab.com:bskrtich/dotfiles.git

# Setup the repos folder
green "Setting up repos folder"
mkdir -p ~/repos

# Symlink dotfile to ~/repos folder
ln -s ~/.dotfiles ~/repos/dotfiles

echo ""
green "Initial setup is now complete!"
yellow "You may now run the other setup scripts"
echo ""
