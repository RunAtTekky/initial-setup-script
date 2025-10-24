#!/bin/bash

cat "./figlets/Terminal"
TARGET_DIR="./terminal"

echo "$TARGET_DIR"
echo "Going through each program"
for file in "$TARGET_DIR"/*; do
  if [ -f "$file" ] && [ -x "$file" ]; then
    echo "Executing: $file"
    # Run the file
    "$file"
    echo "-----------------------------------"
  fi
done

./install-all-applications.sh
./make-directory-structure.sh
./install-dotfiles.sh
