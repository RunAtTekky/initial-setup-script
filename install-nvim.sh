#!/bin/bash

GHUB_REPO="https://github.com/RunAtTekky/kickstart-modular.nvim.git"
NVIM_CFG="$HOME/.config/nvim"

git clone "$GHUB_REPO" "$NVIM_CFG"
cd "$NVIM_CFG"

git checkout macos
