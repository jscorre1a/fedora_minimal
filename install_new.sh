#!/bin/env bash

dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo

rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/azure-cli.repo

sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update

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
	open-vm-tools \
	open-vm-tools-desktop \
	terraform \
	azure-cli \
	code

dnf check-update

dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf check-update

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

#ufw default deny incoming

#ufw deny SSH

systemctl enable ufw

reboot
