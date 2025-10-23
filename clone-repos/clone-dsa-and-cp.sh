#!/bin/bash

# Clone DSAandCP repository
DSA_REPO="https://github.com/RunAtTekky/DSAandCP.git"
DSA_REPO_NAME="DSAandCP"

MY_DSA_DIR="$CODING_REPO/$DSA_REPO_NAME"

# Check if the repo already exists
if [ -d "$MY_DSA_DIR" ]; then
  echo "$DSA_REPO_NAME repo already exists"
else
  git clone "$DSA_REPO" "$MY_DSA_DIR"
  echo "$DSA_REPO_NAME repo cloned."
fi
