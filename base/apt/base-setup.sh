#!/bin/bash

# Install ansible and git
apt-get -y install software-properties-common gnupg
apt-add-repository ppa:ansible/ansible
apt update
apt -y install ansible git
# manually run ansible-pull for the first time
ansible-pull -f -U https://github.com/armsultan/ansible_server_provision.git local_apt.yml