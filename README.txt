# macbookpro
instructions in setting up macbook pro
boot SDHC MacOS High Sierra
Open Disk Utility
delete all partition (journaled) and format in exfat
create a single partition and format it in msdos
format the harddrive/partition using journaled
install Open Core to the target SDD
Shutdown
boot SDHC Install MacOS Ventura
Install Ventura to the targe SDD
Disable Gatekeeper - Open Terminal and run the command "sudo spctl --master-disable"
Install M365 online, check highlight if its working
Install Parallel Desktop version 17, and install the latest version of Kali Linux
User a generic wifi (RTLchip) to connect the Kali Linux to the internet, and run 
#apt-get update
#apt-get upgrade
#apt-get dist-upgrade
Download Driver and install for Realtek chipset (RTL8821au), use for wifi hacking (Alfa/TPlink) and changing mode from manage to monitor
#apt install Realtek-rtl88xxau-dkms 
