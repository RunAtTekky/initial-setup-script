#!/bin/bash

# yay -S --noconfirm --needed brave-bin
PROGRAM="brave"
if ! command -v "$PROGRAM" &> /dev/null; then
  echo "$PROGRAM NOT installed"
  echo "Installing $PROGRAM"
  yay -S --noconfirm --needed "brave-bin"
else
  echo "$PROGRAM is installed"
fi
