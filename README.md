# Linux Void


### Testing

  Run command ini (pastikan =poetry= terinstall):

  ```bash
  $poetry install
  ```

  Namun jika environtment masih keadaan fresh-install, jalankan command ini:

  ```bash
  $poetry init
  $poetry shell
  $poetry add ansible paramiko "molecule[docker,lint]"
  $poetry add -D "ansible-lint[core,yamllint]"
  ```
