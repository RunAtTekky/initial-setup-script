#!/bin/bash

source "./helper.sh"

desired_user="RunAtTekky"
while true; do
    # Prompt the user for input
    read -r -n 1 -p "Are you $desired_user? (y/n): " response

        # Add a newline after the input for cleaner display
        echo

        # Convert the response to lowercase for case-insensitive comparison
        response_lower=$(echo "$response" | tr '[:upper:]' '[:lower:]')

        if [[ "$response_lower" == "y" ]]; then
            # Perform actions for 'Yes' here
            # For example: your_command_to_run
            echo "Welcome RunAtTekky"
            break
        elif [[ "$response_lower" == "n" ]]; then
            echo "You chose NO."
            return 0 # Return failure (1) for no
        else
            echo "⚠️ Invalid input. Please enter 'y' or 'n'."
            # Loop restarts automatically
        fi
    done

pkgs=(github-cli)
install_pkgs "${pkgs[@]}"

if ! gh auth status | grep -w "$desired_user" ; then
    echo "Not logged in as $desired_user. Logging in..."
    gh auth login
else
    echo "Already logged in as $desired_user."
fi

./make-directory-structure.sh

