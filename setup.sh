#!/bin/bash

# since apt is idempotent we just install ansible

echo 'Installing ansible'
sudo apt-add-repository ppa:ansible/ansible -y
sudo update
sudo install software-properties-common ansible -y

echo 'Ansible installed'