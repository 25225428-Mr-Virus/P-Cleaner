#!/bin/bash

#This is simple Cleaner that made by Mr.Virus

#Colors

RED='\033[0;31m'
ORANGE='\033[0;33-'
GREEN='\033[0;32m'
NC='\033[0m' #No color

#Make sure you run this script as root user
if [ "$EUID" -ne 0 ];
then
	clear
	date
	figlet -c "Installing "
        echo -e
        echo -e $RED"Please must be as root"$NC
        exit
fi

#installing and setting up directories.

clear
date
figlet -c "Installing "

echo -e
echo -e "This is simple P-Cleaner that made by Mr.Virus "
echo -e
sleep 1s
echo -e $GREEN"Installing P-Cleaner "
echo -e $GREEN"Setting Up Directories "$NC
echo -e
cd $HOME

sudo apt clean
sudo apt autoclean
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install aptitude
sudo apt-get install -y git

git clone https://github.com/25225428-Mr-Virus/P-Cleaner
sleep 1s
cd P-Cleaner
sudo chmod 744 P-Cleaner.sh
cd ROT/
sudo chmod 744 P-Cleaner
sudo cp P-Cleaner /usr/bin/
sudo chmod 744 /usr/bin/P-Cleaner

sleep 2s
echo -e
echo -e $ORANGE"TTo run this type P-Cleaner in your Terminal. "$NC
echo -e
echo -e $RED"Exiting.... "
echo -e
echo -e $RED"Goodbyee.... "$NC
sleep 1s
