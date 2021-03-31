#!/usr/bin/env bash

./bin/link_dotfiles.sh

./bin/apt_install.sh

./bin/snap_install.sh

./bin/system_remap_caps.sh

sudo apt upgrade -y

figlet "... and here we are again!" | lolcat
