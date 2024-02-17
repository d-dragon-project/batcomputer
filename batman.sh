#!/bin/bash
clear
echo "========================================================"
echo "   Bat-OS is now preparing for the necessary updates    "
echo " Open the README file and follow necessary instructions "
echo "========================================================"
sleep 3
pkill -f firefox
cd /etc/ssh/
dpkg-reconfigure openssh-server
cd /usr/share/kali-defaults/web/images/
cp -f --update browser-home-page-banner.jpg x
cp -f --update kali-dragon-icon.svg y
cp -f --update kali-logo.svg z
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
apt-get -y install ntpdate
apt-get -y install ntp
apt-get -y install ntpdate
ntpdate asia.pool.ntp.org
apt-get -y install grub-customizer
apt-get -y install gimp
apt-get -y install gdebi
apt-get -y install tilix
apt-get -y install htop
apt-get -y install default-jdk
apt-get -y install chromium
apt-get -y install dkms
apt-get -y install bc
apt-get -y install rsync
apt-get -y install git
clear
echo "=================================================="
echo "          Bat-OS installing WIFI driver           "                                      	
echo "    THIS IS FOR BROADCOM BCM4331 (2.4G/5.0G)      "   
echo "=================================================="
sleep 3
apt-get install -y linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')
dpkg -i dkms_3.0.12-1_all.deb
dpkg -i b43-fwcutter_019-4_amd64.deb
dpkg -i firmware-b43-installer_019-4_all.deb
dpkg -i firmware-b43legacy-installer_019-4_all.deb
dpkg -i broadcom-sta-dkms_6.30.223.271-23_all.deb
modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
modprobe wl
clear
echo "=+==================================================="
echo "           Bat-OS installing WIFI driver =           "     
echo " Alfa AC1900 WiFi Adapter - AWUS1900-Range Dual Band " 
echo " USB 3.0 Wi-Fi  RTL8812AU/21AU and RTL8814AU drivers "  
echo "====================================================="
sleep 3
git clone https://github.com/d-dragon-project/Realtek-RTL8811-14AU
cd Realtek-RTL8811-14AU
make RTL8814=1
make install RTL8814=1
sudo modprobe 8814au
clear
echo "==================================================="
echo "          Bat-OS installing WIFI driver            "     
echo "   TP-Link Nano AC600 (Archer T2U)​ WIFI Adapter    " 
echo " USB WiFi Adapters that are based on the RTL8812AU "
echo "==================================================="
sleep 3
git clone https://github.com/d-dragon-project/88xxau-072021
cd 88xxau-072021
VER=$(sed -n 's/\PACKAGE_VERSION="\(.*\)"/\1/p' dkms.conf)
rsync -rvhP ./ /usr/src/rtl88x2bu-${VER}
dkms add -m rtl88x2bu -v ${VER}
dkms build -m rtl88x2bu -v ${VER}
dkms install -m rtl88x2bu -v ${VER}
modprobe 8821au
clear
echo "=================================================="
echo "          Bat-OS has completed installation       "     
echo "           SYSTEM WILL REBOOT IN A MOMENTS       "  
echo "=================================================="
apt auto-remove -y
cd /root/batcomputer/
cp -f --upate kali-logo.svg /usr/share/kali-defaults/web/images/
cp -f --update  browser-home-page-banner.jpg /usr/share/kali-defaults/web/images/
cd /root/batcomputer/
cp -f --update kali-logo.svg /usr/share/kali-defaults/web/images/
cp -f --update browser-home-page-banner.jpg /usr/share/kali-defaults/web/images/
cp -f --uupdate batman.png  /usr/share/pixmaps
cp -f --update bat-os-icon.png /usr/share/pixmaps
cp -f --update background.svg /usr/share/desktop-base/kali-theme/login/
cp -f --update background /usr/share/desktop-base/kali-theme/login/
cp -f --update default /usr/share/backgrounds/kali-16x9/
cp -f --update grub-4x3.png /boot/grub/themes/kali/
cp -f --update grub-16x9.png /boot/grub/themes/kali/
cp -f --update grub-4x3.png /usr/share/grub/themes/kali
cp -f --update grub-16x9.png /usr/share/grub/themes/kali
cp -f --update plymouth_background_future.png /usr/share/plymouth/themes/futureprototype/
cd /usr/share/plymouth/themes/futureprototype/
rm -f logo.png
rm -f debian.png
plymouth-set-default-theme -R futureprototype
plymouth-set-default-theme
reboot
