#!/usr/bin/env bash

# remove other bootloaders from limine
# fstab
# volume increment 3 -> 5
# update /etc/pam.d/greetd to unlock gnome-keyring on login

##%PAM-1.0
#
#auth       required     pam_securetty.so
#auth       requisite    pam_nologin.so
#auth       include      system-local-login
#auth       optional     pam_gnome_keyring.so
#account    include      system-local-login
#session    include      system-local-login
#session    optional     pam_gnome_keyring.so auto_start

# firefox:
# copy over ~/.config/mozilla/firefox/<profile folder>
# about:profiles can tell current/existing profiles
# add profile in about:profiles -> "Create a New Profile" -> "Choose Folder"

# betterbird:
# copy over ~/.thunderbird

curl -fsSL https://install.danklinux.com | sh
paru -S --noconfirm hyprpolkitagent xdg-desktop-portal-hyprland gnome-keyring libsecret
paru -S --noconfirm firefox yazi cachy-update xdg-terminal-exec packet zed rustdesk-bin onlyoffice-bin betterbird-bin 
paru -S --noconfirm cups-pk-helper ttf-fira-code inter-font
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
paru -S --noconfirm chezmoi github-cli
paru -S --noconfirm qt6ct-kde gnome-themes-extra

sudo ip rule add to 192.168.50.0/24 priority 5000 table main
