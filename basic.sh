#!/bin/bash
# mylab v_0.1 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

GREEN='\033[0;42;30m'
#STD='\033[0;0;39m'

CHECK1=$(basic_checks/11.sh |grep DONE| wc -l | grep 5)
CHECK2=$(basic_checks/2.sh |grep DONE| wc -l | grep 10)

 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

brbr(){
  echo " good luck .." 
  exit
}

one(){
  	basic_checks/11.sh      	
         
	if [ "$CHECK1" ] ; then  
	    echo "check"
            pause 
        else  
	    brbr
                
	fi
}

two(){
	
        basic_checks/2.sh

        if [ "$CHECK2" ] ; then
            echo "check"
            pause
        else
            brbr

        fi

}


three(){
        less basic_tasks/3.txt
        pause
}

# do something in two()
four(){
        ./7cent.sh
        pause
}

# do something in two()
five(){
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
basic_checks/11.sh |grep DONE| wc -l | grep 5 &> /dev/null  && \
     echo -e "| ${GREEN} 1. MAN(manual), files etc ${STD}      |"\
     || echo "|  1. MAN(manual), files etc       |"

basic_checks/2.sh |grep DONE| wc -l | grep 10 &> /dev/null  && \
     echo -e "| ${GREEN} 2. Collect system info  ${STD}        |"\
     || echo "|  2. Collect system info          |"

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
        echo "|  r. Refresh ( menu )             |"
	echo "|  q. Quit                         |"
	echo "|__________________________________|"
        echo "                                    "
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 20] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		4) four ;;
		5) five ;;
		6) six ;;
		10) ten ;;
		11) eleven ;;
                r) echo -n "Refreshing progress." && sleep 1 &&\
		 echo -n "." && sleep 1 &&\
		 echo -n "." && sleep 1 ;;
		q) echo " exit ... Done.  Bye, see you later   "  &&  exit 0;;
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
