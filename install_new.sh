#!/bin/env bash

dnf install -y \
	bluedevil \
	ufw \
	ark \
	rofi \
	tar \
	feh \
	stacer \
	dolphin \
	firefox \
	qbittorrent \
	kvantum \
	ansible \
	sddm \
	sddm-kcm \
	kwin \
	konsole \
	plasma-desktop \
	plasma-nm \
	kde-settings-pulseaudio \
	kscreen \
	xorg-x11-drv-intel \
	xorg-x11-drv-vmware \
	kernel-headers \
	kernel-devel \
	gcc \
	task \
	wget \
	gnome-keyring \
	glibc-langpack-en \
	glibc-langpack-pt \
	kdeplasma-addons \
	fira-code-fonts \
	libinput-utils \
	xdotool \
	pkgconfig \
	sqlite-devel \
	zlib-devel \
	terraform \
	azure-cli \
	code \
	https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
	https://johanh.net/repos/runescape/fedora-33/x86_64/runescape-launcher-2.2.8-1.fc33.x86_64.rpm

sudo dnf check-update

dnf install discord -y

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

./aws/install

rm -rf aws

rm -rf awscliv2.zip

aws --version

systemctl enable sddm

systemctl set-default graphical.target

ufw enable

ufw default deny incoming

ufw deny SSH

systemctl enable ufw

reboot
