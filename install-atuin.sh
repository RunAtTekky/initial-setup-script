#!/bin/bash

if ! command -v atuin; then
  bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)
  zsh
  atuin login
  atuin sync
else
  echo "Atuin already installed"
  atuin sync
fi
