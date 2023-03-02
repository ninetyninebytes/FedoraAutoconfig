#!/bin/bash

dnf makecache
dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y update
dnf -y install vim vlc htop gnome-tweaks gnome-extensions-app keepassxc
cd ~/Downloads
mkdir setup-extras
cd setup-extras
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
dnf -y install ./google*.rpm
wget https://az764295.vo.msecnd.net/stable/441438abd1ac652551dbe4d408dfcec8a499b8bf/code-1.75.1-1675893486.el7.x86_64.rpm
dnf -y install ./code*.rpm
dnf install akmod-nvidia
reboot