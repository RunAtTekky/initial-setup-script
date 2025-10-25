#!/bin/bash

source "./helper.sh"

clear
cat ./figlets/RunAt
echo "Script by RunAt"
sleep 1
clear

./run.sh
./make-directory-structure.sh
./install-dotfiles.sh
./set-shell.sh
echo "$DASH_LINE"
./install-hyprland-overrides.sh
