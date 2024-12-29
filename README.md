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

- [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
- [Nerd Fonts release](https://github.com/ryanoasis/nerd-fonts/releases)
- [Maple Fonts](https://github.com/subframe7536/maple-font/releases)

Cache the fonts `fc-cache -f -v`
