git clone https://github.com/d-dragon-project/batcomputer
Run batman.sh

LightDM GTK+Greeter:settings 
Theme: Kali-Dark
Icons: FLat-Remix-Blue-Dark
Font : defaul:Cantrell Regular 11  change to symbol fonts (size 4)
       default user imageicon : emblem-kali => disable
Login window: Horizontal=50 | Vertical=72 

While batman.sh is running change properties of Start Menu (Whisker Menu) go to Apperance Tab
Profile: Hidden
For Display select : Icon and Title
For Title change it to " Bat-OS "
Change the start menu icon with bat-os-icon.png located in /usr/share/images

Modify Date/Time - select property
Layout: Date, then Time
Date- Font:Sans Regular -10  Format: 01/21/2024
Time- Font: Cantrell Regular -10 Format: 12:10:33 am
refer to screnshot

change root password

Open Grub Customizer and change Kali to Bat-OS GNU/Linux include the one in Advance
Do the same with the other OS

change login name
After reboot execute usermode -l <new user> <oldusername>


For Parrot OS
-Control Center => Login Window => Users
Apperance - change background
Users:
change the ff:
Allow manual login - no
Hide the users list - yes
then in Settings Tab set clock format %H:%M:%S

Configure Grub Customizer

