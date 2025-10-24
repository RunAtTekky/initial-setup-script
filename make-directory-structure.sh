#!/bin/bash

set -e

cat "./figlets/Repos"

CODING_REPO="$HOME/MySpace/coding"
PERSONAL_REPO="$HOME/MySpace/personal"

# Creating directory structure
echo
echo
echo
echo "Creating directory structure"
mkdir -p "$CODING_REPO"
mkdir -p "$PERSONAL_REPO"
echo "Directory structure created"
echo

export CODING_REPO
export PERSONAL_REPO

# Clone the following repos
echo "Cloning your favourite repos"
echo "--------------------------------"
TARGET="./clone-repos"
for file in "$TARGET"/*; do
  echo "Running: $file"
  "$file"
  echo "--------------------------------"
done

# Display success message
echo "Cloning successful"
echo "--------------------------------"

