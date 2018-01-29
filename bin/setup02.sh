#!/bin/bash
set -euo pipefail

####
## Part 01
## Install needed applications for use in later parts
####

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

# Install Homebrew apps
green "Install Homebrew apps"
brew install git
brew install wget
brew install vim
brew install python3
brew install jq
brew install ack
brew install bash
brew install composer
brew install dnsmasq
brew install watch

# Install Homebrew-Cask apps
green "Install Homebrew Cask apps"
brew cask install discord
brew cask install vmware-fusion
brew cask install vlc
brew cask install spotify
brew cask install postman
brew cask install Kaleidoscope
brew cask install grandperspective
brew cask install 1password
brew cask install slack
brew cask install application-loader
#brew cask install sublime-text

brew cask install caskroom/fonts/font-source-code-pro

# Install mas apps
green "Install MAS apps"
mas install 418423076 # YemuZip
mas install 405580712 # StuffIt Expander
mas install 407963104 # Pixelmator
mas install 497799835 # Xcode
mas install 525372278 # UTC Bar

# Missing applications
yellow "Oracle SQL Developer https://goo.gl/qRSD9v"
yellow "Xojo https://www.xojo.com/"
yellow "Lock Me Now https://github.com/IGRSoft/LockMeNow"
