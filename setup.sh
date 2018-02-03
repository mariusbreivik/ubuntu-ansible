#!/bin/bash

# since apt is idempotent we just install ansible

echo 'Installing ansible'
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update
sudo apt install software-properties-common ansible -y

sudo apt-cache policy ansible

echo 'Ansible installed successfully'

echo 'Starting installation scripts'
ansible-playbook dev.yml --ask-become-pass -vvvv
