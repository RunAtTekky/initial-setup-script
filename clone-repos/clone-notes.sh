#!/bin/bash

# Clone DSAandCP repository
NOTES_REPO="https://github.com/RunAtTekky/Notes.git"
NOTES_REPO_NAME="Notes"

MY_NOTES_DIR="$PERSONAL_REPO/$NOTES_REPO_NAME"

# Check if the repo already exists
if [ -d "$MY_NOTES_DIR" ]; then
  echo "$NOTES_REPO_NAME repo already exists"
else
  git clone "$NOTES_REPO" "$MY_NOTES_DIR"
  echo "$NOTES_REPO_NAME repo cloned."
fi
