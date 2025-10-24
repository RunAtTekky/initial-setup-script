#!/bin/bash

# yay -S --noconfirm --needed 7zip

PROGRAM="7z"
if ! command -v "$PROGRAM" &> /dev/null; then
    echo "$PROGRAM NOT installed"
    echo "Installing $PROGRAM"
    yay -S --noconfirm --needed "7zip"
else
    echo "$PROGRAM is installed"
fi
