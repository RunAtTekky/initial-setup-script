#!/bin/bash


bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)

atuin login

atuin sync
