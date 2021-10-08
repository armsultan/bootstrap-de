#!/bin/bash

# Get the necessary components
apt-get update
apt-get install xrdp ssl-cert task-mate-desktop -y
apt-get clean

# UFW firewall
# ufw allow 3389
# ufw allow from 192.168.1.0/24 to any port 3389 
# ufw reload 

# Setup the necessary permissions
# Allow xrdp user to access "/etc/ssl/private/ssl-cert-snakeoil.key”
sudo usermod -a -G ssl-cert xrdp

echo " "
echo "XRDP has Started"
echo " "
echo " "
echo "The XRDP Server will be started at 0.0.0.0:3389"
echo " "
echo "Enter a Username and Password to login"
echo " "
echo " "