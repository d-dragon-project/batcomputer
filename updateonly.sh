#!/bin/bash
echo "=================================================="
echo " Bat-OS is now performing the necessary updates   "
echo "        UPDATE | UPGRADE | DIST-UPGRADE           "
echo "=================================================="
sleep 3
cd /root/batcomputer
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get clean
