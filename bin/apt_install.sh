#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install bat
install curl
install file
install git
install htop
install ncdu
install net-tools
install openvpn
install snapd
install tmux
install vim
install zsh

# Fun
install figlet
install lolcat
