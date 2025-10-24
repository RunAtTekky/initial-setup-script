#!/bin/bash

REPO="https://github.com/RunAtTekky/Resume.git"
REPO_NAME="Resume"

DIR="$PERSONAL_REPO/$REPO_NAME"

if [ -d "$DIR" ]; then
  echo "$REPO_NAME already exists"
else
  git clone "$REPO" "$DIR"
fi
