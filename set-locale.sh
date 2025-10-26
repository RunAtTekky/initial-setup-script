#!/bin/bash

# Define the line you want to add
locale_line="en_IN UTF-8"

# Check if the line already exists
if ! grep -Fxq "$locale_line" /etc/locale.gen; then
    # If the line doesn't exist, append it to the file
    echo "$locale_line" | sudo tee -a /etc/locale.gen > /dev/null
    echo "Locale line added."
    sudo locale-gen
else
    echo "Locale line already exists."
fi


