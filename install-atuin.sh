#!/bin/bash

if ! command -v atuin; then
  bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)
  atuin login
  atuin sync
else
  echo "Atuin already installed"
fi
