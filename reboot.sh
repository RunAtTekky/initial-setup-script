#!/bin/bash

# Define a marker file
MARKER_FILE="/tmp/reboot_marker"

# Function to ask for a reboot and then continue the script
ask_reboot_and_continue() {
    # Check if the marker file exists
    if [[ -f "$MARKER_FILE" ]]; then
        # If the marker exists, it means the system has rebooted, continue the script
        echo "System rebooted, continuing with the script..."
        rm -f "$MARKER_FILE"  # Clean up marker file after reboot
    else
        # If the marker doesn't exist, ask the user to reboot
        echo "The system needs to be rebooted for changes to take effect."
        echo "Please reboot the system and run this script again."

        # Create the marker file before rebooting
        touch "$MARKER_FILE"

        # Ask the user to reboot the system
        read -p "Press Enter to reboot now..."

        # Reboot the system
        sudo reboot
    fi
}

# Main script
CURR_SHELL="$(echo $SHELL)"
ZSH_PATH="$(which zsh)"
if [ "$CURR_SHELL" == "$ZSH_PATH" ]; then
    echo "ZSH is current shell"
else
    ask_reboot_and_continue
fi

# Continue with the rest of the script
echo "Continuing with the rest of the script..."
# Your remaining commands go here


