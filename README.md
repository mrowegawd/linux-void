# Linux Void :penguin: (WIP)

## How to Use

```bash
# Run the following command for the default installation
./install.sh

# Install ansible-stuff
./install.sh main deps

# To create hash pass
./install.sh main makepass

# Install using ansible playbook
ansible-playbook install-fresh.yml --ask-become-pass

# Install a specific role
ansible-playbook install-fresh.yml --ask-become-pass --tag "eww" # "eww,tools,nvim"
```

## How to Test

You must create dummy user!

1. Create a dummy user, password, and generate the hashed password:

   ```bash
   # Copy the template folder
   cp tmp_example tmp

   # Generate hashed password
   ./install.sh main makepass
   ```

2. Insert a new user, real password, and the hashed password on that `./tmp`
   folder

3. Choose the role to test (e.g., `tool-fzf`):

   ```bash
   # Example: testing the tool-fzf role
   cd ./roles/tool-fzf

   molecule converge
   ```

## Install NVIDIA

> Works on Debian 13 with the latest VGA drivers

```bash
sudo apt update
sudo apt upgrade

sudo apt install linux-headers-$(uname -r) build-essential dkms nvidia-detect

sudo apt update
sudo apt upgrade

sudo apt install nvidia-driver nvidia-kernel-dkms

sudo reboot
```
