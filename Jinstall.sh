#!/bin/bash

cd /tmp

sudo pacman -Syu

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source "$HOME/.cargo/env"

sudo pacman -S git --noconfirm

git clone https://aur.archlinux.org/paru.git

cd paru

makepkg -si

paru -S helix-git pamac-aur polymc-bin hyprland-bin appimagelauncher rofi-lbonn-wayland --noconfirm

cd

cd Downloads

git clone https://github.com/JakeDevs/Dot-files

cd Dot-files/helix

mkdir /home/jake/.config/helix

cp config.toml /home/jake/.config/helix

cd ~/Downloads/Dot-files

sudo pacman -S steam discord bitwarden firefox kitty polkit-gnome --noconfirm

cp kitty /home/jake/.config/

git config --global user.email "jakedevquestions@gmail.com"
git config --global user.name "Jake"

$ ssh-keygen -t ed25519 -C "jakedevquestions@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

