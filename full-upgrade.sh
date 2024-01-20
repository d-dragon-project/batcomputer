#!/bin/bash
clear
echo "=================================================="
echo "    Bat-Os is now performing the FULL UPGRADE     "
echo "            DIST-UPGRADE | FULL-UPGRADE           "
echo "=================================================="
sleep 3
cd /root/batcomputer
apt-get dist-upgrade -y
apt-get full-upgrade -y
apt-get clean
aapt-get autoremove-y
reboot
