#!/bin/env bash

dnf install \
	bluedevil \
	ark \
	rofi \
	tar \
	dolphin \
	firefox \
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
	kernel-headers \
	kernel-devel \
	gcc \
	wget

systemctl enable sddm

systemctl set-default graphical.target

dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo

dnf check-update

dnf install terraform

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

./aws/install

rm -rf aws

rm -rf awscliv2.zip

aws --version

rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/azure-cli.repo

echo -e "[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo

dnf check-update

dnf install azure-cli code

dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf check-update

dnf install discord

dnf install https://github.com/vladimiry/ElectronMail/releases/download/v4.9.2/electron-mail-4.9.2-linux-x86_64.rpm

get "https://download3.vmware.com/software/player/file/VMware-Player-16.1.0-17198959.x86_64.bundle"

chmod -x VMware-Player-16.1.0-17198959.x86_64.bundle

sh ./VMware-Player-16.1.0-17198959.x86_64.bundle --ignore-errors

rm -rf VMware-Player-16.1.0-17198959.x86_64.bundle

#udo rmmod kvm_intel kvm - probably not needed with --ignore-errors flag
