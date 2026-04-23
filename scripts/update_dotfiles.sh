#!/bin/bash

dotdir="$HOME/dotfiles"

function update
{
    src="$dotdir/$1"
    dest="$HOME/$1"
    rm -rf $dest
    ln -sf $src $dest
}

update .bashrc
update .bash_profile
update .bash_logout
update .xprofile

update .config/alacritty
update .config/i3
update .config/polybar
update .config/rofi

mkdir -p "$HOME/.config/VSCodium/User" && ln -sf "$dotdir/.config/VSCodium/settings.json" "$HOME/.config/VSCodium/User/settings.json"
ln -sf "$dotdir/.config/VSCodium/keybindings.json" "$HOME/.config/VSCodium/User/keybindings.json"

ln -sf "$dotdir/.ssh" "$HOME/.ssh/config"
