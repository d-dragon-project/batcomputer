#!/bin/bash
echo "=================================================="
echo " Bat-Os is now performing the necessary updates   "
echo "        UPDATE | UPGRADE | DIST-UPGRADE           "
echo "=================================================="
sleep 3
cd /root/batcomputer
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt install apt-file -y
apt-file update
update-initramfs -u
apt-get clean
