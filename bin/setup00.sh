#!/bin/bash
set -euo pipefail

####
## Part 00
## Setup anything that nees sudo
####

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

# Require the script to be ran as root
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

# Setup Critical Folders
green "Symlinking repos folder"
ln -s ~/repos /repos

green "Setup temp and mnt folders"
mkdir /temp
mkdir /mnt
