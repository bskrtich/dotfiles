#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source ../_common.sh

####
## PHP
## Install and setup PHP
####

brew tap homebrew/homebrew-php

brew install php72
brew install composer
