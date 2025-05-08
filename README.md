# Linux Void :penguin: (WIP)

## How to Use

```bash
# Run the following command for the default installation
./install.sh

# Install Only ansible-stuff
./install.sh main deps

# Install Using Ansible Playbook
ansible-playbook install-fresh.yml --ask-become-pass

# Install a Specific Role
ansible-playbook install-fresh.yml --ask-become-pass --tag "eww" # "eww,tools,nvim"
```

## How to Test

Example:

```bash
# Example test tool-fzf
cd ./roles/tool-fzf

molecule converge
```

## Fonts

Install and copy fonts at `~/.local/share/fonts`:

- [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
- [Nerd Fonts release](https://github.com/ryanoasis/nerd-fonts/releases)
- [Maple Fonts](https://github.com/subframe7536/maple-font/releases)

Cache the fonts `fc-cache -f -v`

## TODO

- [ ] tambahkan content ini ke file `../molecule/defualt/molecule.yml`

  Molecule versi terbaru perlu penambahan content pada file `../molecule/defualt/molecule.yml`
  pada tiap **roles**, kalau tidak `molecule converge` akan gagal

  ```yml
  ---
  provisioner:
    name: ansible
    lint:
      name: ansible-lint
    inventory:
      links:
        group_vars: ../../../../group_vars/
    options:
      vvv: true
    env:
      ANSIBLE_ROLES_PATH: ../../../../roles/
  ```

  - [x] tool-tmux
  - [x] tool-video
