#!/bin/bash

GHUB_REPO="https://github.com/RunAtTekky/kickstart-modular.nvim.git"
NVIM_CFG="$HOME/.config/nvim"

if [ -d "$NVIM_CFG" ]; then
    echo "NVIM Config already present. Removing"
    rm -rf "$NVIM_CFG"
fi

git clone "$GHUB_REPO" "$NVIM_CFG"
cd "$NVIM_CFG"

git checkout macos
