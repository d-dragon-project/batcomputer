#!/bin/bash
clear
echo "========================================================"
echo "   Bat-OS is now preparing for the necessary updates    "
echo " Open the README file and follow necessary instructions "
echo "========================================================"
sleep 3
cd /etc/ssh/
dpkg-reconfigure openssh-server
cd /usr/share/backgrounds/
mv -f default default-
mv -f default.jpg default-.jpg
mv -f login.jpg login-.jpg
cd /usr/share/desktop-base/active-theme/grub/
mv -f grub-4x3.png grub-4x3-.png
mv -f grub-16x9.png grub-16x9-.png
cd /root/batcomputer
cp default /usr/share/backgrounds/
cp default.jpg /usr/share/backgrounds/
cp login.jpg /usr/share/backgrounds/
cp -f grub-4x3.png /usr/share/desktop-base/active-theme/grub/
cp -f grub-16x9.png /usr/share/desktop-base/active-theme/grub/
cp batman.png /usr/share/icons
cp bat-icon.png /usr/share/icons
cp bat-icon.jpg /usr/share/icons
cp bat-icon.gif /usr/share/icons
cp bat-icon2.png /usr/share/icons
cp bat-os-icon.png /usr/share/icons
clear 
echo "=================================================="
echo " Bat-Os is now performing the necessary updates   "
echo "        UPDATE | UPGRADE | DIST-UPGRADE           "
echo "=================================================="
sleep 3
cat /etc/os-release
cd /root/batcomputer
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt install apt-file -y
apt-file update
update-initramfs -u
apt-get clean
clear
echo "=================================================="
echo "   Bat-Os is now installing necessary softwares   "    
echo "          NTP | GRUB CUSTOMIZER | GIMP            "
echo "=================================================="
sleep 3
apt-get -y install ntp
apt-get -y install ntpdate
ntpdate asia.pool.ntp.org
apt-get -y install grub-customizer
apt-get -y install gimp
apt-get -y install gdebi
apt-get -y install tilix
apt-get -y install htop
apt-get -y install default-jdk
apt-get -y install qterminal
clear
echo "=================================================="
echo "          Bat-OS has completed installation       "     
echo "           SYSTEM WILL REBOOT IN A MOMENTS        "  
echo "=================================================="
apt auto-remove -y
sleep 5
reboot
