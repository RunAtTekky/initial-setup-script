#!/bin/bash

REPO="https://github.com/RunAtTekky/RunAtWebsite.git"
REPO_NAME="RunAtWebsite"

MY_DIR="$CODING_REPO/$REPO_NAME"

if [ -d "$MY_DIR" ]; then
  echo "$REPO_NAME already exists"
else
  git clone "$REPO" "$MY_DIR"

  cd "$MY_DIR" || exit
  git submodule update --init --recursive
fi
