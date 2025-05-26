#!/bin/bash
# Script Performance
# LuisMiSanVe
# - DESIGN -
PROMPT_COMMAND=
echo -en "\033]0;Performance Menu\a"
while true
do
echo -e "\033[32;40m"
printf '\033[8;14;52t'
clear
echo ====================================================
echo Options
echo ====================================================
echo 1 - Open System Monitor
echo 2 - See processes
echo 3 - See CPU temperature '(current)'
echo 4 - See CPU temperature '(real-time)'
echo 5 - Empty Swap Memory
echo 6 - Open Graphic Card Menu '(Nvidia)'
echo ====================================================
echo e - Exit
echo ====================================================
echo Choose an option:
read OPTION
echo ====================================================
echo Programs command execution history:
echo ====================================================
case $OPTION in
1) gnome-system-monitor; 
echo ====================================================; 
echo Press any key to continue; 
echo ====================================================; 
read NOTHING ;;
2) printf '\033[8;24;80t'; top; 
echo ====================================================; 
echo Press any key to continue; 
echo ====================================================; 
read NOTHING  ;;
3) printf '\033[8;24;80t'; sensors; 
echo ====================================================; 
echo Press any key to continue; 
echo ====================================================; 
read NOTHING  ;;
4) printf '\033[8;24;80t'; watch sensors; 
echo ====================================================; 
echo Press any key to continue; 
echo ====================================================; 
read NOTHING  ;;
5)
	echo Emptying Swap Memory...
	sudo swapoff -a
	echo Swap Memory has been emptied.
	echo Activating Swap Memory...
	sudo swapon -a
	echo Swap Memory has been activated.;
echo ====================================================; 
echo Press any key to continue; 
echo ====================================================; 
read NOTHING ;;
6) printf '\033[8;24;80t'; nvidia-smi; 
echo ====================================================; 
echo Press any key to continue; 
echo ====================================================; 
read NOTHING ;;
e|E) echo Closing Performance Menu...; break ;;
*) echo No command is being executed; 
echo ====================================================; 
echo That key is not valid ; 
echo ====================================================; 
read NOTHING ;;
esac

done