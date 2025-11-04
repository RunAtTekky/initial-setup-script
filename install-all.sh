#!/bin/bash

source "./helper.sh"

clear
cat ./figlets/RunAt
echo "Script by RunAt"
sleep 1
clear

./set-locale.sh

./run.sh

# ASK user if they are RunAtTekky, if yes then clone private repos
./gh-auth-login.sh

./install-dotfiles.sh
./set-shell.sh
echo "$DASH_LINE"
./install-hyprland-overrides.sh
echo "$DASH_LINE"
./setup-nvim.sh
echo "$DASH_LINE"

echo "Reboot to make zsh your shell"
echo "Then run oh-my-zsh and atuin scripts"
