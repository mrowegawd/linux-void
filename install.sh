#!/bin/bash

# TODO: install paramiko, python3 untuk menjalankan minimal ansible
# echo "yes"

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
  python3-pip \

pip3 install -U ansible
pip3 install -U paramiko

printf "\n"
printf "\n[+] Run command (from alias-bashscript): r_passkeygen"
printf "\n[+] Check example:\n\tnotes at *tmp_example* (change to tmp)"
