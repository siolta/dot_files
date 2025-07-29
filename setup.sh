#!/bin/bash

# This script will install the neccesary packages and then copy the appropriate configuration 
# files to their respective locations to ensure a homogenious environment

if [[ `uname -a` == *Darwin* ]]; then
    echo "Installing brew and bundle..."
    # Generate bundle with: brew bundle dump --force
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle install -y
    # Switch ubuntu installs to brew
elif [[ `cat /etc/issue` == *Ubuntu* ]]; then
    echo "Updating packages and installing zsh..."
    while true;do echo -n
    sudo apt-get update > /dev/null 2>&1 && sudo apt-get upgrade -y
    sudo apt-get install vim zsh -y
fi

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ./xdg-config/tmux/plugins/tpm

if [[ `echo $SHELL` != *zsh* ]]; then
    chsh -s $(which zsh)
fi

DONE=$'\nDone!'
echo "$DONE"
