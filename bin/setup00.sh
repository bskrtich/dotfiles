#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source _common.sh

####
## Part 00
## Setup anything that nees sudo
####

# Require the script to be ran as root
checkroot

# Setup Critical Folders
green "Symlinking repos folder"
ln -s ~/repos /repos

green "Setup temp and mnt folders"
mkdir /temp
chmod 777 /temp

mkdir /mnt
chmod 777 /mnt
