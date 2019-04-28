#!/bin/bash
######################################################
###                                                ###
###   Name: controller.sh    Author: J Goodacre    ###
###                                                ###
###   Usage: ./controller.sh                       ###
###                                                ###
###  A simple controller script to install Ansible ###
###  on a fresh CentOS 7 machine to then execute   ###
###  the ansible-playbook and further code.        ###
###                                                ###
######################################################
echo -e " --- Installing Bastion Dependencies --- "
sudo yum install -q ansible
sudo yum --enablerepo=extras install -q epel-release
sudo yum install -y -q python python-dev python-pip
sudo pip install -q boto boto3
echo -e "\n --- Dependencies installed --- \n"

echo -e " --- Exporting env variables --- "
export AWS_ACCESS_KEY_ID= 
export AWS_SECRET_ACCESS_KEY= 
export EC2_INI_PATH=./inventory/ec2.ini
export ANSIBLE_INVENTORY=./inventory
echo -e " --- Variables exported --- \n"

echo -e " --- Executing Playbook --- "
ansible-playbook run.yml
echo -e " --- Playbook complete! --- "

