#!/usr/bin/env bash

#[*] Name of the script: Droid-Info
#[*] Description: "See More Information About the Operating System"
#[*] Version: 2.0
#[*] Author: JRIC2002
#[*] Installer of the script: Droid-Info
#[*] Date of creation: 14/12/2018
#[*] Date of last update: 30/08/2020

#COLORS
black='\033[1;30m'
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
magenta='\033[1;35m'
cyan='\033[1;36m'
white='\033[0m'

#INSTALACION DE PAQUETES

echo ""
printf "$cyan[*]$green Installing Packages...$white\n"
echo ""
sleep 3

pkg install termux-api -y
pkg install neofetch -y
pkg install util-linux -y
pkg install htop -y

sleep 2
echo ""

printf "$blue		   >> Installation Complete <<$white\n"
echo ""
echo ""

#PREGUNTA

function pregunta {
	
	clear
	printf "
        $blue ____            _     _   $green ___        __
        $blue|  _ \ _ __ ___ (_) __| |  $green|_ _|_ __  / _| ___
        $blue| | | | '__/ _ \| |/ _' |   $green| || '_ \| |_ / _ *
        $blue| |_| | | | (_) | | (_| |   $green| || | | |  _| (_) |
        $blue|____/|_|  \___/|_|\__,_|  $green|___|_| |_|_|  \___/  v2.0

                $cyan.:.:.$white Script encoded by: @JRIC2002 $cyan.:.:.$white
$cyan.:.:.$white Description: See More Information About the Operating System$cyan .:.:.$white
	"
	echo ""

	sleep 1
	printf "$cyan[$white\e0#$cyan]$magenta You want to start Droid-Info:$white\n"
	echo ""
	sleep 1
	printf "$green       [$white\e001$green]$yellow Yes$white\n"
	echo ""
	printf "$green       [$white\e002$green]$yellow No$white\n"
	echo ""
	
	printf "$green[$white\e0*$green]$green Choose an Option$white >>"
	read -p " " opt
	
		if [ $opt = "1" -o $opt = "01" ]; then
			clear 
			bash Droid-Info
		elif [ $opt = "2" -o $opt = "02" ]; then
			echo ""
			exit
		else
			clear
			pregunta
		fi
}

pregunta

