#!/bin/bash
set -euo pipefail

# Colorize me baby
green() { printf "\e[1;32m%b\e[0m\n" "$@"; }
yellow() { printf "\e[1;33m%b\e[0m\n" "$@"; }
red() { printf "\e[1;31m%b\e[0m\n" "$@"; }

# Check if script is being ran at root
checkroot() {
    # ref: https://askubuntu.com/a/30157/8698
    if ! [ $(id -u) = 0 ]; then
        red "The script need to be run as root." >&2
        exit 1
    fi
}

# Be able to find user running script even it ran as root
# Allows you to run commands as a user if script has elevated privileges
# IE: sudo -u $real_user non-root-command
if [ ${SUDO_USER:-null} != null ]; then
    real_user=$SUDO_USER
else
    real_user=$(whoami)
fi
