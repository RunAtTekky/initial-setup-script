#!/bin/bash

# Check if homebrew is installed or not
source "./install-brew.sh"

# Install all the packages in ./curr.conf
source "./install-pkgs.sh"

echo "Installing dotfiles"
source "./install-dotfiles.sh"
