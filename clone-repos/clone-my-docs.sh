#!/bin/bash

set -e
# Make coding and personal repo in myspace repo
CODING_REPO="$HOME/MySpace/coding"
PERSONAL_REPO="$HOME/MySpace/personal"

mkdir -p "$CODING_REPO"
mkdir -p "$PERSONAL_REPO"

# Clone my_docs repository
DOCS_REPO="https://github.com/RunAtTekky/my_docs.git"
DOCS_REPO_NAME="my-docs"

MY_DOCS_DIR="$PERSONAL_REPO/$DOCS_REPO_NAME"

# Check if the repo already exists
if [ -d "$MY_DOCS_DIR" ]; then
  echo "$DOCS_REPO_NAME repo already exists"
  exit 1
else
  git clone "$DOCS_REPO" "$MY_DOCS_DIR"
  echo "$DOCS_REPO_NAME repo cloned."
fi
