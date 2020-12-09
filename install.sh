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
	gcc

systemctl enable sddm

systemctl set-default graphical.target

dnf config-manager --add-repo https://rpm.releases.hashicorp.com/$release/hashicorp.repo

dnf install terraform

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

./aws/install

rm -rf aws

rm -rf awscliv2.zip

aws --version

#udo rmmod kvm_intel kvm - probably not needed with --ignore-errors flag
