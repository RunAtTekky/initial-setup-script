#!/bin/bash

source "./helper.sh"

cat "./figlets/Terminal"

TARGET_DIR="./terminal"
echo "Going through each program in $TARGET_DIR"
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
