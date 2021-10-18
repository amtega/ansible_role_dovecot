# Ansible dovecot role

This is an [Ansible](http://www.ansible.com) role to setup dovecot IMAP server.

## Role Variables

You can use any dovecot variable, see `defaults/mail.yml` for examples.

## Usage

This is an example playbook:

```yaml
---

- hosts: all
  roles:
    - role: dovecot
      vars:
        dovecot_params:
          disable_plaintext_auth: "no"
          protocols:
            - imap
          mail_location: "maildir:~/Mail"
          passdb:
            - driver: pam
          userdb:
            - driver: passwd
          namespace inbox:
            inbox: "yes"
            separator: "/"
```

## License

Copyright (C) 2021 AMTEGA - Xunta de Galicia

This role is free software: you can redistribute it and/or modify it under the terms of:

GNU General Public License version 3, or (at your option) any later version; or the European Union Public License, either Version 1.2 or – as soon they will be approved by the European Commission ­subsequent versions of the EUPL.

This role is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details or European Union Public License for more details.

## Author Information

- José Manuel Fandiño Pita
- Juan Antonio Valiño García
