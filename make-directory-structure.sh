#!/bin/bash

set -e

CODING_REPO="$HOME/MySpace/coding"
PERSONAL_REPO="$HOME/MySpace/personal"

# Creating directory structure
echo "Creating directory structure"
mkdir -p "$CODING_REPO"
mkdir -p "$PERSONAL_REPO"

export CODING_REPO
export PERSONAL_REPO

# Clone the following repos
echo "Cloning your favourite repos"
echo
./clone-repos/clone-dsa-and-cp.sh
echo
./clone-repos/clone-my-docs.sh
echo
./clone-repos/clone-notes.sh
echo

# Display success message
echo "Cloning successful"
echo

