#!/bin/bash

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\033[1mFedora Linux Autoconfigurator\033[0m"
echo "This will configure Fedora Linux to my Preferences" 
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Make sure you read the README.md before continuing."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\033[1ma ninetyninebytes project!\033[0m"
echo "built on 28-02-2023"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\033[1mWARNING: I AM NOT RESPONSIBLE FOR DAMAGES TO YOUR COMPUTER.\033[0m"
echo -e "\e[3m(so please make sure you know what you're doing!)\e[0m"
echo
echo 
echo "Please Choose an Option"
echo
echo "S: Start the Installation"
echo "C: Cancel the Installation and Exit"
echo "R: Check the README.md file"
echo "A: Acknowledgements & Credits"

while true; do
    read -p "Your Selection [S/C/R/A]: " scra 
    case $scra in
        [Ss]* ) break;;
        [Cc]* ) echo installation cancelled!; exit;;
        [Rr]* ) cat README.md;;
        [Aa]* ) cat CREDITS.txt;;
        * ) echo "Please choose a valid selection";;
    esac
done

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "You Have decided to continue with the installation. Would you like to get the version with NVIDIA drivers?"
echo
echo -e "\033[1mWARNING: CHOOSING THE NVIDIA DRIVERS WILL AUTOMATICALLY REBOOT YOUR COMPUTER.\033[0m"
echo
echo "Please choose an Option"
echo
echo "Y: Yes, Download the NVIDIA drivers"
echo "N: No, Do NOT install the NVIDIA drivers and continue setup"
echo "C: Cancel the Installation and Exit"
while true; do
    read -p "Your Selection [Y/N/C]: " ync
    case $ync in
        [Yy]* ) ./setup_nvidia.sh; break;;
        [Nn]* ) ./setup.sh; break;;
        [Cc]* ) echo installation cancelled!; exit;;
        * ) echo "Please choose a valid selection";;
    esac
done