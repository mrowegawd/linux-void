#!/bin/bash

__install_deps() {
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

	pip install pipx

	# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible
	pipx install ansible-dev-tools
	pipx install molecule --include-devs
	pipx install "molecule-plugins[docker]" --include-deps # for driver
}

mkpass() {
	read -r -p "your password? " getvar

	mkdir -p tmp

	mkpasswd -m sha-512 "$getvar" >tmp/userpass-SHA5
	echo "$getvar" >tmp/userpass
	echo "$USER" >tmp/user
}

playbook_start() {
	WORKDIR="$HOME/moxconf/development"
	CURRENT_DIR="$(pwd)"

	mkdir -p "$WORKDIR"

	# Periksa apakah directory saat ini sesuai dengan directory yang ditentukan
	if [ "$CURRENT_DIR" != "$TARGET_DIR" ]; then
		echo "Error: the script must be run from directory $TARGET_DIR"
		echo "go there and run or git clone again"
		exit 1
	fi

	if [ -z "$(command -v mkpasswd)" ]; then
		echo "package whois not found! let me install it.."
		sudo apt install whois -y
		sleep 1
	fi

	clear
	mkpass

	sleep 2
	printf "[+] Starting ansible-playbook !!\n\n"

	ansible-playbook install-fresh.yml --ask-become-pass

}

main() {
	if [[ $1 == "all" ]]; then
		__install_deps
		playbook_start
	fi

	if [[ $1 == "deps" ]]; then
		__install_deps
	fi

	if [[ $1 == "makepass" ]]; then
		mkpasswd
	fi
}

"$@"
