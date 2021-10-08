#!/bin/bash

#Get the necessary components
apt-get update
apt-get install lxqt-core lxqt-config qterminal tightvncserver -y
apt-get install xfe -y
apt-get clean

#Setup the necessary files
mkdir ~/.vnc
wget https://raw.githubusercontent.com/armsultan/bootstrap-de/main/desktop-environment/apt/lxqt/xstartup -P ~/.vnc/
wget https://raw.githubusercontent.com/armsultan/bootstrap-de/main/desktop-environment/apt/lxqt/vncserver-start -P /usr/local/bin/
wget ithubusercontent.com/armsultan/bootstrap-de/main/desktop-environment/apt/lxqt/vncserver-stop -P /usr/local/bin/

chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop

echo " "
echo "Start vncserver by running vncserver-start"
echo " "
echo "Enter a password when first time starting this script."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "Setup a SSH tunnel on your client machine first: "
echo "ssh -L 5901:127.0.0.1:5901 -N -f -l armand [SERVER-IP]"
echo " "
echo "You can now connect to this address with client VNC Viewer:"
echo " "
echo "Connect to this address will open a window with LXQt Desktop Environment"
echo " "
echo " "
echo " "
echo "Running vncserver-start"
echo " "
echo " "
echo " "
echo "To Kill VNC Server just run vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start