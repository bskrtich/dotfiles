#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source ../_common.sh

####
## Atom
## Install and setup Atom
####

brew cask install atom

mkdir -p ~/.atom

# Move to app dir so PWD will give the correct folder
cd ../../app/atom

green "Symlink config.cson"
rm -f ~/.atom/config.cson
ln -s `pwd`/config.cson ~/.atom/config.cson

green "Symlink style.less"
rm -f ~/.atom/style.less
ln -s `pwd`/style.less ~/.atom/style.less
