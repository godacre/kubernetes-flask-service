init_ec2
=========

This role creates EC2 infrastructure to host a K8s cluster (Creates SG, 1x Master EC2, 2x Worker EC2s)


Requirements
------------

(For ansible to interact with AWS)
- python
- python-pip
- boto3


Role Variables
--------------

None


Dependencies
------------

(Following variables need to be set in the defaults file and/or vars file)
  image: (ami_id)
  keypair: (ec2_keypair)
  aws_access_key: (aws_access_key)
  aws_secret_key: (aws_secret_key)



Example Playbook
----------------

    - hosts: servers
      roles:
         - init_ec2


Author Information
------------------

@JG 2019
