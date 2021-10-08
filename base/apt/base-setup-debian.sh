#!/bin/bash

# Install ansible and git
apt-get install -y software-properties-common gnupg2 
# echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt update
apt -y install ansible git
# manually run ansible-pull for the first time
ansible-pull -f -U https://github.com/armsultan/ansible_server_provision.git local_apt.yml