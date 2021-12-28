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

_whois() {
  echo "package whois not found! let me install it.."
  sudo apt install whois -y
  sleep 1
}

_mkpass() {
  read -r -p "your password? " getvar
  read -r "getvar?your password? "
  mkpasswd -m sha-512 "$getvar" >"$PATHTEMP/mypass_SHA512_$(date +%F)"
  echo "$getvar" >"$PATHTEMP/mypass_$(date +%F)"
  printf "%s $PATHTEMP\\n" "store pass path:"
}

PATHTEMP=$(mktemp -d)

if command -v whois >/dev/null; then
  _whois
fi

_mkpass

mkdir -p tmp
touch tmp/user
touch tmp/userpass
touch tmp/userpass-SHA5

clear

printf "\n"
printf "\n[+] Check example:\n\tnotes at *tmp_example*"
