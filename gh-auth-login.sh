#!/bin/bash

desired_user="RunAtTekky"
if ! gh auth status | grep -w "$desired_user" ; then
    echo "Not logged in as $desired_user. Logging in..."
    gh auth login
else
    echo "Already logged in as $desired_user."
fi


