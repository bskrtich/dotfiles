#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

####
## Atom
## Setup git
####

mkdir -p ~/.git

green "Symlink config.cson"
rm -R ~/.atom/config.cson
ln -s ../../app/atom/config.cson ~/.atom/config.cson

green "Symlink style.less"
rm -R ~/.atom/style.less
ln -s ../../app/atom/style.less ~/.atom/style.less
