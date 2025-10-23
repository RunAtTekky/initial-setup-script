#!/bin/bash

set -e

# Go to home directory
BASE_DIR="$HOME"
cd "$BASE_DIR"

./clone-repos/clone-dsa-and-cp.sh
./clone-repos/clone-my-docs.sh
./clone-repos/clone-notes.sh

