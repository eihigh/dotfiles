#!/bin/bash

pacman-key --init
pacman-key --populate archlinux
pacman -Syy --noconfirm archlinux-keyring
pacman -Syu --noconfirm

ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

echo 'ja_JP.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
echo 'LANG=ja_JP.UTF-8' > /etc/locale.conf

useradd -m -G wheel me
echo me:me | chpasswd
echo "me ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

pacman -Syy --noconfirm sudo which openssh git go jq vim zsh nodejs npm
