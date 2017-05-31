#!/bin/bash

GREEN='\033[0;42;30m'
STD='\033[0;0;39m'

TEST1=$(\
[ -f "/home/shares/basic_lab/lab2_1.txt" ] && cat /home/shares/basic_lab/lab2_1.txt| grep `uname `| grep `uname -i` | grep `uname -i` )

TEST2=$(\
[ -f "/home/shares/basic_lab/lab2_2.txt" ] &&  lscpu |grep Xeon | grep X5647 )

TEST3=$(\
[ -f "/home/shares/basic_lab/lab2_3.txt" ] &&  if [ $(lines=`ls /sys/block/`; for line in $lines;\
  do grep "$line"  /home/shares/basic_lab/lab2_3.txt  ;  done | wc -l) -gt 3 ] ; then echo "ok" ; fi   ) 

TEST4=$(\
[ -f "/home/shares/basic_lab/lab2_4.txt" ] && less /home/shares/basic_lab/lab2_4.txt | grep up | grep days | grep users | grep load | grep average )

TEST5=$( \
[ -f "/home/shares/basic_lab/lab2_5.txt" ] && if [ $(lines=`   less /etc/passwd |grep bash | awk -F ":" '{print $1}' `; for line in $lines; do grep "$line"  /home/shares/basic_lab/lab2_5.txt; done |wc -l) -gt 0 ] ; then echo "ok" ; fi )




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
        echo "    Find out which users have access to System \(able to login via SSH, Terminal, or even via the su comman \) and  save result: /home/shares/basic_lab/lab2_5.txt"
        echo "  "
}
task-2-6(){
        echo "  "
        echo "  Exercise 2.6"
        echo "  "
        echo "    Print file system partitions info of your system and save result: /home/shares/basic_lab/lab2_6.txt "
        echo "  "
}
task-2-7(){
        echo "  "
        echo "  Exercise 2.7"
        echo "  "
        echo "    Print memory, SWAP info of your system and save result: /home/shares/basic_lab/lab2_7.txt "
        echo "  "
}
task-2-8(){
        echo "  "
        echo "  Exercise 2.8"
        echo "  "
        echo "    Print Network, system ports and socket info and save result: /home/shares/basic_lab/lab2_8.txt "
        echo "  "
}
task-2-9(){
        echo "  "
        echo "  Exercise 2.9"
        echo "  "
        echo "    Print / View process info, file space usage and save result: /home/shares/basic_lab/lab2_9.txt "
        echo "  "
}
task-2-10(){
        echo "  "
        echo "  Exercise 2.10"
        echo "  "
        echo "    Print / Display the list of running services and save result: /home/shares/basic_lab/lab2_10.txt"
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



