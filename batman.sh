#!/bin/bash
pkill -f firefox
cd /usr/share/kali-defaults/web/images/
mv -f browser-home-page-banner.jpg browser-home-page-banner.jpeg
mv -f kali-dragon-icon.svg kali-dragon-icon.svg-
cp -f kali-logo.svg /usr/share/kali-defaults/web/images/
cd /root/batcomputer/
cp -f browser-home-page-banner.jpg /usr/share/kali-defaults/web/images/
cp batman.png  /usr/share/images
cp bat-icon.png /usr/share/images
cp bat-icon.jpg /usr/share/images
cp -f desktop-grub.png /usr/share/images/desktop-base/
cp -f kali-laminaria-16x9.png /usr/share/backgrounds/kali/
cp -f grub-4x3.png /boot/grub/themes/kali/
cp -f grub-16x9.png /boot/grub/themes/kali/
cp -f desktop-background /usr/share/images/desktop-base
cp -f plymouth_background_future.png /usr/share/plymouth/themes/futureprototype/
cd /usr/share/plymouth/themes/futureprototype/
rm -f logo.png
rm -f debian.png
plymouth-set-default-theme -R futureprototype
plymouth-set-default-theme
clear 
echo "##################################################"
echo "         Run after installing Kali Linux          "                                      	
echo " This will reboot the Machine after Installation  "
echo "##################################################"
sleep 3
cd /root/batcomputer
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt install apt-file -y
apt-file update
update-initramfs -u
apt-get clean
apt-get -y install ntp
clear
apt-get install -y linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')
dpkg -i dkms_3.0.12-1_all.deb
dpkg -i b43-fwcutter_019-4_amd64.deb
dpkg -i firmware-b43-installer_019-4_all.deb
dpkg -i firmware-b43legacy-installer_019-4_all.deb
dpkg -i broadcom-sta-dkms_6.30.223.271-23_all.deb
modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
modprobe wl
apt-get -y install grub-customizer
apt-get -y install gimp
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
make 
make install
reboot
