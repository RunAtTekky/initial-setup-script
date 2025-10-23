#!/bin/bash

ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/runattekky/dotfiles"
REPO_NAME="dotfiles"

is_stow_installed() {
  pacman -Qi "stow" &> /dev/null
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi

cd ~

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone"
else
  git clone "$REPO_URL"
fi

# Check if the clone was successful
if [ $? -eq 0 ]; then
  echo "removing old configs"
  rm -rf ~/.config/kitty
  rm -rf ~/.config/mpv
  rm -rf ~/.newsboat
  rm -rf ~/.config/swayimg
  rm -rf ~/.config/yazi
  rm -rf ~/.config/zathura
  rm -rf ~/.config/zellij
  rm -rf ~/.zshrc


  cd "$REPO_NAME"
  stow kitty
  stow mpv
  stow newsboat
  stow swayimg
  stow yazi
  stow zathura
  stow zellij
  stow zsh
else
  echo "Failed to clone the repository."
  exit 1
fi

