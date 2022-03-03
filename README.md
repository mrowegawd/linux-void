# Linux Void (Personal)

> Always on WIP ~

## Fresh install

  Run this command

  ```bash
  ./install.sh
  ```

  <details>
    <summary>Source list: Debian11 (bullseye)</summary>

    # /etc/apt/sources.list

    # debian 11 bullseye
    deb https://deb.debian.org/debian/ bullseye main contrib non-free
    deb-src https://deb.debian.org/debian/ bullseye main contrib non-free

    deb https://security.debian.org/debian-security bullseye-security main contrib non-free
    deb-src https://security.debian.org/debian-security bullseye-security main contrib non-free

    deb https://deb.debian.org/debian bullseye-updates main contrib non-free
    deb-src https://deb.debian.org/debian bullseye-updates main contrib non-free

    deb https://deb.debian.org/debian bullseye-backports main contrib non-free
    deb-src https://deb.debian.org/debian bullseye-backports main contrib non-free
  </details>


## Test

  Install `poetry` and friends

  ```bash
  # fast deps install
  $poetry install
  $poetry init
  $poetry shell

  # build manual
  $poetry add ansible paramiko "molecule[docker,lint]"
  $poetry add -D "ansible-lint[core,yamllint]"
  ```
