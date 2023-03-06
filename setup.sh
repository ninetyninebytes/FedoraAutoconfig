#!/bin/bash

dnf makecache
dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf -y check-update
dnf -y install code
dnf -y update
dnf -y install vim vlc htop gnome-tweaks gnome-extensions-app keepassxc neofetch gparted
mkdir setup-extras
cd setup-extras
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
dnf -y install ./google*.rpm