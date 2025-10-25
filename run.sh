#!/bin/bash

if ! command -v yay &> /dev/null; then
  echo "Installing yay AUR helper"
  sudo pacman -S --needed base-devel git --noconfirm
  git clone https://aur.archlinux.org/yay.git
  cd yay || exit
  echo "Building yayyyyyyyyy"
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
else
  echo "yay is already installed"
fi

source ./packages.conf
source ./helper.sh

echo "Installing SYSTEM UTILS"
install_pkgs "${SYSTEM_UTILS[@]}"

echo "Installing DEV TOOLS"
install_pkgs "${DEV_TOOLS[@]}"

echo "Installing Languages and Frameworks"
install_pkgs "${LANG_FRAMEWORKS[@]}"

echo "Installing MEDIA Applications"
install_pkgs "${MEDIA[@]}"

echo "Installing BROWSERS"
install_pkgs "${BROWSERS[@]}"

echo "Installing OTHERS"
install_pkgs "${OTHERS[@]}"

