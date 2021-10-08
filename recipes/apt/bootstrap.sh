#!/bin/bash

#Get the necessary components
apt-get update
apt-get install -y wget gurl
mkdir /tmp/install

# Setup Base
echo "Setup base"
wget https://raw.githubusercontent.com/armsultan/bootstrap-de/main/base/apt/base-setup.sh -P /tmp/install
chmod +x /tmp/install/base-setup.sh
./tmp/install/base-setup.sh
echo "Setup base - DONE"

# Setup DE
echo "Setup DE - LXQT with VNC"
# Uncomment one:
# LXQT and VNC
# wget https://raw.githubusercontent.com/armsultan/bootstrap-de/main/desktop-environment/apt/lxqt/de-apt-lxqt.sh -P /tmp/install/de-script.sh
# MATE and RDP
wget https://raw.githubusercontent.com/armsultan/bootstrap-de/main/desktop-environment/apt/mate-xrdp/de-apt-mate.sh -P /tmp/install/de-script.sh

# Execute Bootstrap
chmod +x /tmp/install/de-script.sh

echo "Setup DE - DONE"

# Clean up
apt-get clean
#rm -rf /tmp/install