#!/bin/bash

# Get the necessary components
apt-get update
apt-get install  xrdp ssl-cert mate-desktop-environment mate-desktop-environment-extra -y
apt-get clean

# Setup the necessary permissions
# Allow xrdp user to access "/etc/ssl/private/ssl-cert-snakeoil.key”
usermod -a -G ssl-cert xrdp

# xRDP – Allow multiple sessions (local and remote) for the same user
# Workaround – unsetting DBUS_SESSION_BUS_ADRESS approach
wget https://raw.githubusercontent.com/armsultan/bootstrap-de/main/desktop-environment/apt/mate-xrdp/startwm.sh -O /etc/xrdp/startwm.sh

systemctl enable --now xrdp

# UFW firewall
# ufw allow 3389
# ufw allow from 192.168.1.0/24 to any port 3389 
ufw allow from any to any port 3389 proto tcp
ufw reload 

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
