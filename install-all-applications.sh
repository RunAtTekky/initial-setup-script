#!/bin/bash

cat "./figlets/Applications"
# Install all applications
TARGET_DIR="./applications"

install_program() {
  PROGRAM="$1"
  if ! command -v "$PROGRAM" &> /dev/null; then
    echo "$PROGRAM NOT installed"
    echo "Installing $PROGRAM"
    yay -S --noconfirm --needed "$PROGRAM"
  else
    echo "$PROGRAM is installed"
  fi
}

export -f install_program

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
