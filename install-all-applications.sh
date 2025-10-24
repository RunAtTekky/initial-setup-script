#!/bin/bash

source "./helper.sh"

cat "./figlets/Applications"

# Install all applications
TARGET_DIR="./applications"

echo "Going through each application in $TARGET_DIR"
for file in "$TARGET_DIR"/*; do
  if [ -f "$file" ] && [ -x "$file" ]; then
    echo "Executing: $file"
    # Run the file
    "$file"
    echo "-----------------------------------"
  fi
done
