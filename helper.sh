#!/bin/bash

export CODING_REPO="$HOME/MySpace/coding"
export PERSONAL_REPO="$HOME/MySpace/personal"
export DASH_LINE="--------------------------------"

install_program() {
  PROGRAM="$1"
  PKG="$2"
  if ! command -v "$1" &> /dev/null; then
    echo "Installing $PROGRAM"
    yay -S --noconfirm --needed "$PKG"
  else
    echo "$PROGRAM is installed"
  fi
}

export -f install_program

have_pkg() {
  pacman -Qi "$1" &> /dev/null
}

export -f have_pkg

install_pkg() {
  PKG="$1"
  if ! have_pkg "$PKG"; then
    echo "Installing $PKG"
    yay -S --noconfirm --needed "$PKG"
  else
    echo "$PKG is installed"
  fi
}

export -f install_pkg
