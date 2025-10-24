#!/bin/bash

# yay -S --noconfirm --needed zen-browser-bin


PROGRAM="zen"
if ! command -v "$PROGRAM" &> /dev/null; then
    echo "$PROGRAM NOT installed"
    echo "Installing $PROGRAM"
    yay -S --noconfirm --needed "zen-browser-bin"
else
    echo "$PROGRAM is installed"
fi
