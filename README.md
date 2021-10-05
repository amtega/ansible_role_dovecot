# Ansible dovecot role

This is an [Ansible](http://www.ansible.com) role for the Dovecot IMAP server

## Role Variables

You can use any dovecot variable, see `defaults/mail.yml` for examples.

## Dependencies

None.

## Usage

This is an example playbook:

```yaml
---

- hosts: all
  roles:
    - role: dovecot
      vars:
        dovecot_param_passdb:
          driver: pam
        dovecot_param_userdb:
          driver: passwd
          args: "blocking=no"
        dovecot_param_override_fields: "uid=vmail gid=vmail"
        dovecot_param_ssl: "no"
        dovecot_param_namespace: 
          inbox: "yes"
          separator: "/"
```

## License

Copyright (C) <!-- YEAR --> AMTEGA - Xunta de Galicia

This role is free software: you can redistribute it and/or modify it under the terms of:

GNU General Public License version 3, or (at your option) any later version; or the European Union Public License, either Version 1.2 or – as soon they will be approved by the European Commission ­subsequent versions of the EUPL.

This role is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details or European Union Public License for more details.

## Author Information

- Juan Antonio Valiño García
