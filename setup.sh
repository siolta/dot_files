#!/bin/bash

# This script will install the neccesary packages and then copy the appropriate configuration 
# files to their respective locations to ensure a homogenious environment

if [[ `uname -a` == *Darwin* ]]; then
    echo "Installing brew and zsh..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle install -y
    # Switch ubuntu installs to brew
elif [[ `cat /etc/issue` == *Ubuntu* ]]; then
    echo "Updating packages and installing zsh..."
    while true;do echo -n
    sudo apt-get update > /dev/null 2>&1 && sudo apt-get upgrade -y
    sudo apt-get install vim zsh -y
fi

# Check if oh-my-zsh is installed
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh..."
    sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # Install powerlevel10k 
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

cp -sf ~/Code/Personal/dot_files/.zshrc ~/.zshrc

if [[ `echo $SHELL` != *zsh* ]]; then
    chsh -s $(which zsh)
fi

DONE=$'\nDone!'
echo "$DONE"
