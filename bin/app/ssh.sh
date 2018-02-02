#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source ../_common.sh

####
## SSH
## Setup ssh
####

green "Setup git config"
mkdir -p ~/.ssh

# Move to app dir so PWD will give the correct folder
cd ../../app/git

green "Symlink ssh folder"
rm -f ~/ssh
ln -s ~/.ssh ~/ssh
