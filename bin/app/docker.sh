#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source ../_common.sh

####
## Docker
## Install and setup Docker
####

brew cask install docker
