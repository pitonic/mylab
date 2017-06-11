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



echo -n "."
CHECK1=$( basic_checks/1.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK1" ] ; then
    LINE1="$GREEN"
else 
    LINE1="$STD"
fi

echo -n "." 
CHECK2=$( basic_checks/2.sh |grep DONE| wc -l | grep 10)
if [ "$CHECK2" ] ; then
    LINE2="$GREEN"
else
    LINE2="$STD"
fi


echo -n "."
CHECK3=$( basic_checks/3.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK3" ] ; then
    LINE3="$GREEN"
else
    LINE3="$STD"
fi


echo -n "."
CHECK4=$( basic_checks/4.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK4" ] ; then
    LINE4=${GREEN}
else
    LINE4=${STD}
fi


echo -n "."
CHECK5=$( basic_checks/5.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK5" ] ; then
    LINE5=${GREEN}
else
    LINE5=${STD}
fi


echo -n "."
CHECK6=$( basic_checks/6.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK1" ] ; then
    LINE6=${GREEN}
else
    LINE6=${STD}
fi


echo -n "."
CHECK7=$( basic_checks/7.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK1" ] ; then
    LINE7=${GREEN}
else
    LINE7=${STD}
fi


echo -n "."
CHECK8=$( basic_checks/8.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK1" ] ; then
    LINE8=${GREEN}
else
    LINE8=${STD}
fi


echo -n "."
CHECK9=$( basic_checks/9.sh |grep DONE| wc -l | grep 5)
if [ "$CHECK1" ] ; then
    LINE9=${GREEN}
else
    LINE9=${STD}
fi


echo -n "*"

 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

brbr(){
  echo " "
  echo " good luck .."
  echo " " 
  exit
}

one(){
  	basic_checks/1.sh      	
         
	if [ "$CHECK1" ] ; then  
            echo " "
            echo " \"The secret of getting ahead is getting started.\" -Mark Twain "
            echo " "
            pause 
        else  
	    brbr
                
	fi
}

two(){
	
        basic_checks/2.sh

        if [ "$CHECK2" ] ; then
            echo " "
            echo " “Success is never final. Failure is never fatal. It is courage that counts.” -Winston Churchill "
            echo " "
            pause
        else
            brbr

        fi

}


three(){
     
        basic_checks/3.sh

        if [ "$CHECK3" ] ; then
            echo " "
            echo " “Computers are useless.  They can only give you answers.” - Pablo Picasso "
            echo " "
            pause
        else
            brbr
        fi
}

four(){

        basic_checks/4.sh

        if [ "$CHECK4" ] ; then
            echo " "
            echo " “Computers are useless.  They can only give you answers.” - Pablo Picasso "
            echo " "
            pause
        else
            brbr

        fi

}
five(){

        basic_checks/5.sh

        if [ "$CHECK5" ] ; then
            echo " "
            echo " “Computers are useless.  They can only give you answers.” - Pablo Picasso "
            echo " "
            pause
        else
            brbr

        fi

}
six(){

        basic_checks/6.sh

        if [ "$CHECK6" ] ; then
            echo " "
            echo " “Computers are useless.  They can only give you answers.” - Pablo Picasso "
            echo " "
            pause
        else
            brbr

        fi

}
seven(){

        basic_checks/7.sh

        if [ "$CHECK7" ] ; then
            echo " "
            echo " “Computers are useless.  They can only give you answers.” - Pablo Picasso "
            echo " "
            pause
        else
            brbr

        fi

}
eight(){

        basic_checks/8.sh

        if [ "$CHECK8" ] ; then
            echo " "
            echo " “Computers are useless.  They can only give you answers.” - Pablo Picasso "
            echo " "
            pause
        else
            brbr

        fi

}






# function to display menus
show_menus() {



	clear
	echo " __________________________________ "
	echo "|                                  |"	
	echo "|         BASIC - tasks            |"
	echo "|__________________________________|"
        echo "|                                  |"
     echo -e "|${LINE1} 1. MAN, files etc                ${STD}|"
     echo -e "|${LINE2} 2. Collect system info           ${STD}|"
     echo -e "|${LINE3} 3. Users, passwords, groups..    ${STD}|"

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
	echo "| 16.                              |"
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
