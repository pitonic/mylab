#!/bin/bash

GREEN='\033[0;42;30m'
STD='\033[0;0;39m'

TEST1=$(\
[ -f "/home/shares/basic_lab/lab2_1.txt" ] && cat /home/shares/basic_lab/lab2_1.txt| grep `uname `| grep `uname -i` | grep `uname -i` )

TEST2=$(\
[ -f "/home/shares/basic_lab/lab2_2.txt" ] &&  lscpu |grep Model\ name: )

TEST3=$(\
[ -f "/home/shares/basic_lab/lab2_3.txt" ] &&  if [ $(lines=`ls /sys/block/`; for line in $lines;\
  do grep "$line"  /home/shares/basic_lab/lab2_3.txt  ;  done | wc -l) -gt 3 ] ; then echo "ok" ; fi   ) 

TEST4=$(\
[ -f "/home/shares/basic_lab/lab2_4.txt" ] && less /home/shares/basic_lab/lab2_4.txt | grep up | grep days | grep users | grep load | grep average )

TEST5=$( \
[ -f "/home/shares/basic_lab/lab2_5.txt" ] && if [ $(lines=`   less /etc/passwd |grep bash | awk -F ":" '{print $1}' `; for line in $lines; do grep "$line"  /home/shares/basic_lab/lab2_5.txt; done |wc -l) -gt 0 ] ; then echo "ok" ; fi )

TEST6=$( \
[ -f "/home/shares/basic_lab/lab2_6.txt" ] && if [ $[ $(less /home/shares/basic_lab/lab2_6.txt |wc -l) - $( systemctl list-unit-files -t service --state=enabled  | awk '/.service/ && /enabled/'|wc -l)] -le 3  ]  ; then echo "ok" ; fi )

TEST7=$( \
[ -f "/home/shares/basic_lab/lab2_7.txt" ] && \
if [ $[ $(less /home/shares/basic_lab/lab2_7.txt | egrep -i swap |awk -F " " '{print $2}'  ) - $( free -w | egrep -i swap |awk -F " " '{print $2}'  )] -eq 0  ] &&  [ $[ $(less /home/shares/basic_lab/lab2_7.txt | egrep -i  mem |awk -F " " '{print $2}'  ) - $( free -w | egrep -i  mem |awk -F " " '{print $2}'  )] -eq 0  ]  ; then echo "ok" ; fi )

TEST8=$( \
[ -f "/home/shares/basic_lab/lab2_8.txt" ] && less /home/shares/basic_lab/lab2_8.txt | awk '/tcp/ && /LISTEN /' )


TEST9=$( \
[ -f "/home/shares/basic_lab/lab2_9.txt" ] && less /home/shares/basic_lab/lab2_9.txt | grep PID| grep CPU| grep RSS| grep USER  > /dev/null && less /home/shares/basic_lab/lab2_9.txt |wc -l| grep 6 )


TEST10=$( \
[ -f "/home/shares/basic_lab/lab2_10.txt" ] &&  if [ $[ $(less /home/shares/basic_lab/lab2_10.txt | wc -l  ) - $( grep error /var/log/messages* | wc -l )] -eq 0  ] ; then echo "ok" ; fi )  







task-2-1(){
	echo "  "
	echo "	Exercise 2.1"
	echo "  "
	echo "	  Print system information (kernel version, hostname ) of your system and save result: /home/shares/basic_lab/lab2_1.txt  "
	echo "  "
	echo "  "
}
task-2-2(){
	echo "	"
	echo "	Exercise 2.2"
	echo "	"
	echo "	  Print CPU information of your system and save result: /home/shares/basic_lab/lab2_2.txt  "
	echo "	"
}
task-2-3(){
	echo "	"
	echo "	Exercise 2.3"
	echo "	"
	echo "	  Print Block devices, storage devices & disks etcinformation of your system and save result: /home/shares/basic_lab/lab2_3.txt  "
	echo "  "
}
task-2-4(){
        echo "	"
        echo "	Exercise 2.4"
        echo "	"
        echo "     Print how long the system has been running, users, load information and save result:/home/shares/basic_lab/lab2_4.txt  "
        echo "	"
}
task-2-5(){
        echo "  "
        echo "  Exercise 2.5"
        echo "  "
        echo "    Find out which users have access to System ( able to login via SSH or even via the su command etc) and  save result: /home/shares/basic_lab/lab2_5.txt"
        echo "  "
}
task-2-6(){
        echo "  "
        echo "  Exercise 2.6"
        echo "  "
        echo "    List the "ENABLED" service units in your system and save result: /home/shares/basic_lab/lab2_6.txt "
        echo "  "
}
task-2-7(){
        echo "  "
        echo "  Exercise 2.7"
        echo "  "
        echo "    Print Memory, SWAP info ( wide output ) of your system and save result: /home/shares/basic_lab/lab2_7.txt "
        echo "  "
}
task-2-8(){
        echo "  "
        echo "  Exercise 2.8"
        echo "  "
        echo "    Print Network ports(numeric) and listening sockets info and save result: /home/shares/basic_lab/lab2_8.txt "
        echo "  "
}
task-2-9(){
        echo "  "
        echo "  Exercise 2.9"
        echo "  "
        echo "    Print / View process info: (PID, USER, CPU and sort it by RSS memory) and save top 5 result: /home/shares/basic_lab/lab2_9.txt "
        echo "  "
}
task-2-10(){
        echo "  "
        echo "  Exercise 2.10"
        echo "  "
        echo "     Please check for "any  errors"   /var/log/messages (including old)  and save result: /home/shares/basic_lab/lab2_10.txt"
        echo "  "
}




if  [ "$TEST1" ] ; then
  echo "	"
  echo -e "task 2.1 - ${GREEN} DONE  ${STD}"
  if  [ "$TEST2" ] ; then
    echo "        "
    echo -e "task 2.2 - ${GREEN} DONE  ${STD}"
    if  [ "$TEST3" ] ; then
      echo "        "
      echo -e "task 2.3 - ${GREEN} DONE  ${STD}"
      if  [ "$TEST4" ] ; then
        echo "        "
        echo -e "task 2.4 - ${GREEN} DONE  ${STD}"
        if  [ "$TEST5" ] ; then
          echo "        "
          echo -e "task 2.5 - ${GREEN} DONE  ${STD}"
          if  [ "$TEST6" ] ; then
            echo "        "
            echo -e "task 2.6 - ${GREEN} DONE  ${STD}"
            if  [ "$TEST7" ] ; then
              echo "        "
              echo -e "task 2.7 - ${GREEN} DONE  ${STD}"
              if  [ "$TEST8" ] ; then
                echo "        "
                echo -e "task 2.8 - ${GREEN} DONE  ${STD}"
                if  [ "$TEST9" ] ; then
                  echo "        "
                  echo -e "task 2.9 - ${GREEN} DONE  ${STD}"
                  if  [ "$TEST10" ] ; then
                    echo "        "
                    echo -e "task 2.10 - ${GREEN} DONE  ${STD}"
		  else
                    task-2-10
                  fi
                else
                  task-2-9
                fi
              else
                task-2-8
              fi
            else
              task-2-7
            fi
          else
            task-2-6
          fi
        else
          task-2-5
        fi
      else
        task-2-4
      fi
    else
      task-2-3
    fi
  else
    task-2-2 
  fi
else
  task-2-1
fi



