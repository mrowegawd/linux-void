# Linux Void :penguin: (WIP)

## How to use

```bash
./install.sh
# or
ansible-playbook install-fresh.yml --ask-become-pass

# or install specific role
ansible-playbook install-fresh.yml --ask-become-pass --tag "eww" # "eww,tools,nvim"
```

## Fonts

Install and copy fonts at `~/.local/share/fonts`:

- [Monospace](https://github.com/githubnext/monaspace)
- [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/releases)

```bash
# Cache the fonts:
fc-cache -f -v
```
