#!/bin/bash

# Install all packages in order
./install-zsh.sh
./install-kitty.sh
./install-stow.sh
./install-hugo.sh
./install-dotfiles.sh
# ./install-hyprland-overrides.sh

./set-shell.sh

./make-directory-structure.sh
