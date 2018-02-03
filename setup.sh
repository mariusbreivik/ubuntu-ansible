#!/bin/bash

# since apt is idempotent we just install ansible

echo 'Installing ansible'
sudo apt-add-repository ppa:ansible/ansible -y
sudo update
sudo install software-properties-common ansible -y

sudo apt-cache policy ansible

echo 'Ansible installed successfully'