#!/bin/bash

export CODING_REPO="$HOME/MySpace/coding"
export PERSONAL_REPO="$HOME/MySpace/personal"
export DASH_LINE="--------------------------------"

is_installed() {
  pacman -Qi "$1" &> /dev/null
}
is_group_installed() {
  pacman -Qg "$1" &> /dev/null
}

install_pkgs() {
  local packages=("$@")
  local to_install=()

  for pkg in "${packages[@]}"; do
    if ! is_installed "$pkg" && ! is_group_installed "$pkg"; then
      to_install+=("$pkg")
    fi
  done

  if [ ${#to_install[@]} -ne 0 ]; then
    echo "Installing ${packages[*]}"
    yay -S --noconfirm "${to_install[@]}"
  fi
}

export -f install_pkgs 
