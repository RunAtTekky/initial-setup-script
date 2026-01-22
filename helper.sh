#!/bin/bash

export CODING_REPO="$HOME/MySpace/coding"
export PERSONAL_REPO="$HOME/MySpace/personal"
export DASH_LINE="--------------------------------"

is_installed() {
    brew list "$1" &>/dev/null
}

install_pkgs() {
  local packages=("$@")
  local to_install=()

  echo "Asked to install: ${packages[*]}"
  for pkg in "${packages[@]}"; do
    if ! is_installed "$pkg" ; then
      to_install+=("$pkg")
    fi
  done

  if [ ${#to_install[@]} -ne 0 ]; then
    echo "Installing: ${packages[*]}"
    brew install "${to_install[@]}"
  fi
}

export -f install_pkgs
