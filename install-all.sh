#!/bin/bash

source "./helper.sh"

clear
cat ./figlets/RunAt
echo "Script by RunAt"
sleep 1
clear

./set-locale.sh

./run.sh
./gh-auth-login.sh
./make-directory-structure.sh
./install-dotfiles.sh
./set-shell.sh
echo "$DASH_LINE"
./install-hyprland-overrides.sh
echo "$DASH_LINE"
./setup-nvim.sh
echo "$DASH_LINE"

./reboot.sh
./install-atuin.sh
echo "$DASH_LINE"
./install-oh-my-zsh.sh
