setup_kube_worker
=========

This role joins worker nodes into the K8s cluster created by the setup_kube_master role


Requirements
------------

None


Role Variables
--------------

None


Dependencies
------------

Role:
setup_kube_generic
setup_kube_master


Example Playbook
----------------

    - hosts: servers
      roles:
         - setup_kube_worker


Author Information
------------------

@JG 2019
