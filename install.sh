#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo apt install --no-install-recommends -y \
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
  python3-pip

# Install paramiko, python3 untuk menjalankan minimal ansible
sudo pip3 install -U ansible
sudo pip3 install -U paramiko

_mkpass() {
  read -r -p "your password? " getvar

  mkdir -p tmp

  mkpasswd -m sha-512 "$getvar" >tmp/userpass-SHA5
  echo "$getvar" >tmp/userpass
  echo "$USER" >tmp/user
}

if [ -z "$(command -v mkpasswd)" ]; then
  echo "package whois not found! let me install it.."
  sudo apt install whois -y
  sleep 1
fi

clear
echo ""

_mkpass
sleep 2
printf "[+] Starting ansible-playbook !!\n\n"

ansible-playbook install-fresh.yml --ask-become-pass

# ansible-galaxy collection install community.libvirt
