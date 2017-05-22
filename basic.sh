#!/bin/bash
# mylab v_0.1 
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
	less basic_one.txt
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
	echo " __________________________________ "
	echo "|                                  |"	
	echo "|         BASIC - tasks            |"
	echo "|__________________________________|"
        echo "|                                  |"
        echo "|  1. MAN(manual), files etc       |"
        echo "|  2. Collect system info          |"
        echo "|  3. Edit password expiry info    |"
	echo "|  4. IP & Host setup              |"
	echo "|  5. Create Users & Groups        |"
	echo "|  6. Create colaborated folder    |"
	echo "|  7. Find, Search & locate        |"
	echo "|  8. Configire cron job           |"
	echo "|  9. configure repository         |"
	echo "| 10. SSH & password less          |"
	echo "| 11.  Rsyslog setup               |"
	echo "| 12. Ftp setup                    |"
	echo "| 13. Web server setup             |"
	echo "| 14. Maria install                |"
	echo "| 15. iptables                     |"
	echo "| 16. CPU, Memory, Space , etc     |"
	echo "| 17. Archive Tar etc              |"
	echo "| 18. Maria install                |"
	echo "| 19. Maria install                |"
	echo "| 20. Maria install                |"
        echo "|__________________________________|"
        echo "|                                  |"
	echo "|  0. Exit                         |"
	echo "|__________________________________|"
        echo "                                    "
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 0 - 20] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) two ;;
		4) two ;;
		5) two ;;
		6) six ;;
		10) ten ;;
		11) eleven ;;
		0) exit 0;;
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
