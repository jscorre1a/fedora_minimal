#!/bin/env bash

dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo

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

LE_USER=$(getent passwd $SUDO_USER | cut -d: -f6 | cut -d/ -f3)

gpasswd -a $LE_USER input

dnf install \
	bluedevil \
	ark \
	rofi \
	tar \
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
	ruby \
	wmctrl \
	opam \
	fuse \
	fuse-devel \
	gmp \
	gmp-devel \
	libcurl-devel \
	m4 \ 
	perl-Pod-Html \
	pkgconfig \
	sqlite-devel \
	zlib-devel \
	terraform \
	azure-cli \
	code \
	https://github.com/vladimiry/ElectronMail/releases/download/v4.9.2/electron-mail-4.9.2-linux-x86_64.rpm \
	https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
	https://johanh.net/repos/runescape/fedora-33/x86_64/runescape-launcher-2.2.8-1.fc33.x86_64.rpm -y

sudo dnf check-update

dnf install discord -y

gem install fusuma fusuma-plugin-wmctrl fusuma-plugin-keypress

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

./aws/install

rm -rf aws

rm -rf awscliv2.zip

aws --version

wget "https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-16.1.0-17198959.x86_64.bundle"

chmod -x VMware-Workstation-Full-16.1.0-17198959.x86_64.bundle

sh ./VMware-Workstation-Full-16.1.0-17198959.x86_64.bundle --ignore-errors --console --eulas-agreed

rm -rf VMware-Workstation-Full-16.1.0-17198959.x86_64.bundle

systemctl enable sddm

systemctl set-default graphical.target

vi /etc/default/grub

grub2-mkconfig -o /etc/grub2-efi.cfg

reboot
