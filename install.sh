#!/bin/bash

# TODO: install paramiko, python3 untuk menjalankan minimal ansible
# echo "yes"

sudo apt update -y && sudo apt upgrade -y

sudo apt install --no-install-recommends -y python3-pip \
	python-pip \
	python3-dev \
	gnupg \
	gnupg2 \
	unzip \
	wget \
	git \
	vim \
	stow \
	build-essential \
	libssl-dev \
	libffi-dev \
	sshpass \
	python-apt \
	python-setuptools \
	python3-setuptools

sudo -H pip install ansible
sudo -H pip install paramiko
