#!/bin/bash

# yay -S --noconfirm --needed zathura
# yay -S --noconfirm --needed zathura-pdf-poppler
install_program "zathura"

is_installed() {
    pacman -Qi "$1" &> /dev/null
}
PROG="zathura-pdf-poppler"
if ! is_installed "zathura-pdf-poppler"; then
    echo "Install $PROG first"
    yay -S --noconfirm --needed "$PROG"
else
    echo "$PROG is installed"
fi

