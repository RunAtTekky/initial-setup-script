#!/bin/bash

set -e

# Go to home directory
BASE_DIR="$HOME"
cd "$BASE_DIR"

# Make coding and personal repo in myspace repo
CODING_REPO="$HOME/MySpace/coding"
PERSONAL_REPO="$HOME/MySpace/personal"

mkdir -p "$CODING_REPO"
mkdir -p "$PERSONAL_REPO"

# Clone DSAandCP repository
DSA_REPO="https://github.com/RunAtTekky/DSAandCP.git"
DSA_REPO_NAME="DSAandCP"

if [ -d "$CODING_REPO/$DSA_REPO_NAME" ]; then
  echo "DSAandCP repo already exists"
  exit 1
else
  git clone "$DSA_REPO" "$CODING_REPO/$DSA_REPO_NAME"
  echo "DSAandCP repo cloned."
fi
