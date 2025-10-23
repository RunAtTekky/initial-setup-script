#!/bin/bash

# Install all applications
TARGET_DIR="$(pwd)/applications"

echo "$TARGET_DIR"
echo "Going through each application"
for file in "$TARGET_DIR"/*; do
  if [ -f "$file" ] && [ -x "$file" ]; then
    echo "Executing: $file"
    # Run the file
    "$file"
    echo "-----------------------------------"
  fi
done
