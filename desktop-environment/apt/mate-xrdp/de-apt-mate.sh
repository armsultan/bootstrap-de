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
usermod -a -G ssl-cert xrdp

# perl -e 'print crypt("Your-Clear-Text-Password-Here", "salt"),"\n"'
$USER=armand
useradd -m -p saLOTfhrqj4xA $USER
echo mate-session > /home/$USER/.xsession
chown $USER:$USER /home/$USER/.xsession
service xrdp restart


echo " "
echo "XRDP has Started"
echo " "
echo " "
echo "The XRDP Server will be started at 0.0.0.0:3389"
echo " "
echo "Remember to open firewall for Port TCP/3389"
echo " "
echo "Enter a Username and Password to login"
echo " "
echo " "
