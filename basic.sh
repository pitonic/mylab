#!/bin/bash
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){
	less climenu.sh
        pause
}
 
# do something in two()
two(){
	./7cent.sh
        pause
}




ten(){
        echo " ten 10 "
        pause
}

eleven(){
        echo " odinaccati 11 "
        pause
}





 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo "|         BASIC - tasks            |"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        echo "|  1. Create files                 |"
        echo "|  2. Collect system info          |"
        echo "|  3. Edit password expiry info    |"
	echo "|  4. IP & Host setup              |"
	echo "|  5. Create Users & Groups        |"
	echo "|  6. Create colaborated folder    |"
	echo "|  7. Find, Search & locate        |"
	echo "|  8. Configire cron job           |"
	echo "|  9. configure repository         |"
	echo "| 10. SSH & password less          |"
	echo "| 5.  Rsyslog setup                |"
	echo "| 5. Ftp setup                     |"
	echo "| 5. Web server setup              |"
	echo "| 6. Maria install  "
	echo "| 6. iptables   "
	echo "| 6. CPU, Memory, Space , etc  "
	echo "| 6. Archive Tar etc   "
	echo "| 6. Maria install  "
	echo "| 6. Maria install  "
	echo "| 6. Maria install  "
	echo "| 7. Exit"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 13] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) two ;;
		4) two ;;
		5) two ;;
		6) six ;;
		10) ten ;;
		11) eleven ;;
		9) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
