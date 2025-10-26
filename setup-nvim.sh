#!/bin/bash

REPO="https://github.com/RunAtTekky/kickstart-modular.nvim.git"

NVIM_PATH="$HOME/.config/nvim/"
rm -rf "$NVIM_PATH"
git clone "$REPO" "$NVIM_PATH"

