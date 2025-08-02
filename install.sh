#!/bin/bash
sudo pacman -S --needed - < pacman-packages.txt
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay && makepkg -si --noconfirm && cd .. && rm -rf yay
fi
yay -S --needed --noconfirm - < packages.txt
sudo sed -i 's/#sv_SE.UTF-8 UTF-8/sv_SE.UTF-8 UTF-8/' /etc/locale.gen
sudo locale-gen
sudo localectl set-locale LANG=sv_SE.UTF-8
stow hypr waybar nvim zsh tmux ghostty
