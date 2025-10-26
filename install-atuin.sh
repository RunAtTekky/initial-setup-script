#!/bin/bash

if ! command -v atuin; then
  yay -S --noconfirm atuin
  atuin login
  atuin sync
else
  echo "Atuin already installed"
  atuin login
  atuin sync
fi
