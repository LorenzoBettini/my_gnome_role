Role Name
=========

My Ansible role for installing "GNOME", some of its applications, and other configurations.

DISCLAIMER: this role is built to fit my needs and configurations, and it is not meant to be reusable.

This role is described in this blog post: https://www.lorenzobettini.it/2023/11/my-ansible-role-for-gnome/

Requirements
------------

The `petermosmans.customize-gnome`, as specified in `requirements.yml`. Install the requirements using

```
ansible-galaxy install -r requirements.yml
```

When used in a playbook, make sure to add the part

```yaml
- name: petermosmans.customize-gnome
```

in your `requirements.yml` together with the version as in `requirements.yml` of this repository.

Example Playbook
----------------

```yaml
    - name: Install GNOME
      ansible.builtin.include_role:
        name: lorenzobettini.my_gnome_role
```

To avoid the use of dconf for modifying configurations, e.g., when those are handled as dotfiles with another tool:

```yaml
    - name: Install GNOME
      ansible.builtin.include_role:
        name: lorenzobettini.my_gnome_role
      modify_dconf: false
```

License
-------

MIT

