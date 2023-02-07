# macOS-RamDisk By chris1111
# Copyright (c) 2023, chris1111. All Right Reserved.
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
printf '\e[8;35;80t'
BOLD="\033[1m"
RED="\033[1;31m"
GREEN="\033[1;32m"
Purple='\033[0;35m'
Blue='\033[0;34m'
Cyan='\033[0;36m'
Yellow='\033[0;33m'
OFF="\033[m"

nameh=`users`
function echob() {
  echo "`tput bold`$1`tput sgr0`"
}

function head
{
clear


echo "        ***************************************************************
                                 ${Cyan}macOS-RamDisk${OFF}               
        ***************************************************************"

}
function menu
{
echo "                  
                                 Welcome ${BOLD}${Purple}$nameh${OFF}"
                                                              
echo " "
echo "                                Type ${GREEN}${BOLD}A${OFF} ➣ to START "
echo " "
echo "                                Type ${RED}${BOLD}X${OFF} ➣ to EXIT   "                            
echo " "                                 

echo "        ***************************************************************"  
echo " "
echo "        ***************************************************************"  
read -n 1 option
}
function RamDisk
{
head
echo " "
echo "macOS-RamDisk"

echo "———————————————————————————————————————————————————————————————————————————————"
echo Choose the RamDisk size: ${BOLD}Followed by Enter${OFF}
echo "
Value RamDisk size: 
Choose the size Number 
 ${Cyan}⬇︎${OFF}                   ${GREEN}⬇︎${OFF}   
    
(${Yellow}256${OFF} Mb) ------- = ${GREEN}524288${OFF}   
(${Yellow}512${OFF} Mb) ------- = ${GREEN}1048576${OFF} 
(${Yellow}1${OFF} Gb) --------- = ${GREEN}2097152${OFF}  
(${Yellow}2${OFF} Gb) --------- = ${GREEN}4194304${OFF} 
(${Yellow}3${OFF} Gb) --------- = ${GREEN}6294456${OFF}
(${Yellow}4${OFF} Gb) --------- = ${GREEN}8391608${OFF}  
(${Yellow}5${OFF} Gb) --------- = ${GREEN}10488760${OFF}
(${Yellow}6${OFF} Gb) --------- = ${GREEN}12585912${OFF}
(${Yellow}7${OFF} Gb) --------- = ${GREEN}14683064${OFF}
(${Yellow}8${OFF} Gb) --------- = ${GREEN}16384000${OFF}"
echo
read ramdisk_size
echo You have choose $ramdisk_size of ramdisk size
sleep 1
echo " "
echo Choose the ramdisk file system: ${GREEN}HFS+${OFF} / ${GREEN}HFS+J${OFF} / ${GREEN}APFS${OFF}: ${BOLD}Followed by Enter${OFF}
echo
read ramdisk_FS
echo You have choose $ramdisk_FS file system
sleep 2
diskutil partitionDisk $(hdiutil attach -nomount ram://$ramdisk_size) 1 GPTFormat $ramdisk_FS 'RAMDisk' '100%'

echo "———————————————————————————————————————————————————————————————————————————————"


echo "———————————————————————————————————————————————————————————————————————————————"

Sleep 1	
osascript -e 'display notification "'"macOS-RamDisk"'" with title "Build successfull" sound name "Funk"'


echo " "
}
function Quit
{
clear
echo " " 
echo "
Quit macOS-RamDisk."

osascript -e 'tell app "terminal" to display dialog "Quit macOS-RamDisk " with icon file "System:Library:CoreServices:loginwindow.app:Contents:Resources:ShutDown.tiff" buttons {"Logout"} default button 1 with title "macOS-RamDisk"'
echo " " 
echob "Good By ${Purple}$nameh${OFF}"
echo " " 
exit 0
}
while [ 1 ]
do
head
menu
case $option in

a|A)
echo
RamDisk ;;
x|X)
echo
Quit ;;


*)
echo ""
esac
echo
echob "${Cyan}You must type any key to return.${OFF} ${Yellow}You can create another RamDisk."
echo
read -n 1 line
clear
done

exit
