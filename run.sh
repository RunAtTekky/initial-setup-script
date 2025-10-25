#!/bin/bash

source ./packages.conf
source ./helper.sh

cat ./figlets/Applications

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

echo "$DASH_LINE"

echo "Installing SYSTEM UTILS"
install_pkgs "${SYSTEM_UTILS[@]}"
echo "$DASH_LINE"

echo "Installing DEV TOOLS"
install_pkgs "${DEV_TOOLS[@]}"
echo "$DASH_LINE"

echo "Installing Languages and Frameworks"
install_pkgs "${LANG_FRAMEWORKS[@]}"
echo "$DASH_LINE"

echo "Installing MEDIA Applications"
install_pkgs "${MEDIA[@]}"
echo "$DASH_LINE"

echo "Installing BROWSERS"
install_pkgs "${BROWSERS[@]}"
echo "$DASH_LINE"

echo "Installing OTHERS"
install_pkgs "${OTHERS[@]}"
echo "$DASH_LINE"

