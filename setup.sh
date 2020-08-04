#!/bin/bash

# since apt is idempotent we just install ansible

echo 'Installing ansible'
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update && sudo apt upgrade -y
sudo apt install software-properties-common ansible unzip git vim -y


# need to clone the repo to get the rest of the files
WORKDIR=~/.personal_setup

if [ ! -n "$WORKDIR"] ; then
	WORKDIR=~/.personal_setup
fi

if [ -d "$WORKDIR" ]; then
	rm -rf $WORKDIR
fi

wget https://github.com/mariusbreivik/ubuntu-ansible/archive/master.zip -P $WORKDIR
cd $WORKDIR
unzip -o master.zip

echo 'Ansible installed successfully'

echo 'Starting installation scripts'
ansible-playbook $WORKDIR/ubuntu-ansible-master/ubuntu.yaml
