#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source _common.sh

####
## Part 01
## Install needed applications for use in later parts
####

# Install Homebrew apps
green "Install Homebrew apps"
brew install coreutils
brew install ack
brew install awscli
brew install bash
brew install git
brew install wget
brew install vim
brew install python3
brew install jq
brew install ack
brew install bash
brew install dnsmasq
brew install watch
brew install shellcheck

# Install Homebrew-Cask apps
green "Install Homebrew Cask apps"
brew cask install signal
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
#brew cask install flash-npapi
brew cask install google-backup-and-sync
#brew cask install sublime-text

brew cask install caskroom/fonts/font-source-code-pro

# Run all the app scripts
for file in ./app ; do
    if [[ -x "$file" ]]; then
        echo "Running file $file"
        "$file"
    fi
done

# Install mas apps
green "Install MAS apps"
mas install 418423076 # YemuZip
mas install 405580712 # StuffIt Expander
mas install 1289583905 # Pixelmator Pro
#mas install 497799835 # Xcode
mas install 525372278 # UTC Bar

# Missing applications
yellow "Oracle SQL Developer https://goo.gl/qRSD9v"
yellow "Xojo https://www.xojo.com/"
yellow "Lock Me Now https://github.com/IGRSoft/LockMeNow"
