setup_kube_master
=========

This role installs K8s master node dependencies and initialises cluster


Requirements
------------

None


Role Variables
--------------

None


Dependencies
------------

Roles:
- setup_kube_generic


Example Playbook
----------------

    - hosts: servers
      roles:
         - setup_kube_master


Author Information
------------------

@JG 2019
