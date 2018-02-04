#!/bin/bash

# since apt is idempotent we just install ansible

echo 'Installing ansible'
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update
sudo apt install software-properties-common ansible unzip -y


# need to clone the repo to get the rest of the files
WORKDIR=/tmp
wget https://github.com/mariusbreivik/ubuntu-ansible/archive/master.zip -P $WORKDIR
cd $WORKDIR
unzip -o master.zip

echo 'Ansible installed successfully'

echo 'Starting installation scripts'
ansible-playbook $WORKDIR/ubuntu-ansible-master/ubuntu.yaml
