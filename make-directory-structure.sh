#!/bin/bash

source "./helper.sh"

set -e

cat "./figlets/Repos"

# Creating directory structure
echo "Creating directory structure"
mkdir -p "$CODING_REPO"
mkdir -p "$PERSONAL_REPO"
echo "Directory structure created"
echo "$DASH_LINE"

# Clone the following repos

TARGET="./clone-repos"
echo "Cloning your favourite repos in $TARGET"
echo "$DASH_LINE"
for file in "$TARGET"/*; do
  if [ -f "$file" ] && [ -x "$file" ]; then
    echo "Running: $file"
    "$file"
    echo "$DASH_LINE"
  fi
done

# Display success message
echo "Cloning successful"
echo "$DASH_LINE"

