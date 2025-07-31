#!/bin/bash

sudo pacman -S --needed - < pacman-packages.txt

if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay && makepkg -si --noconfirm && cd .. && rm -rf yay
fi

yay -S --needed --noconfirm - < packages.txt

stow hypr
