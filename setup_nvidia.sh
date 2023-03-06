#!/bin/bash

dnf makecache
dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y update
dnf -y install vim vlc htop gnome-tweaks gnome-extensions-app keepassxc neofetch gparted
mkdir setup-extras
cd setup-extras
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
dnf -y install ./google*.rpm
wget https://az764295.vo.msecnd.net/stable/92da9481c0904c6adfe372c12da3b7748d74bdcb/code-1.76.0-1677667581.el7.x86_64.rpm
dnf -y install ./code*.rpm
dnf -y install akmod-nvidia
reboot