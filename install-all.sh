#!/bin/bash

CURR_DIR="$(pwd)"

# Check if homebrew is installed or not
source "./install-brew.sh"

# Install all the packages in ./curr.conf
source "./install-pkgs.sh"

echo "Installing dotfiles"
source "./install-dotfiles.sh"

cd "$CURR_DIR"
source "./install-oh-my-zsh.sh"

echo "Installing NVIM with Runat's config"
source "./install-nvim.sh"
