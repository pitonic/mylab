#!/bin/bash

GREEN='\033[0;42;30m'
STD='\033[0;0;39m'

TEST1=$(\
[ -f "/home/shares/basic_lab/lab2_1.txt" ] && cat /home/shares/basic_lab/lab2_1.txt| grep `uname `| grep `uname -i` | grep `uname -i` )

TEST2=$(\
[ -f "/home/shares/basic_lab/lab2_2.txt" ] &&  lscpu |grep Xeon | grep X5647 )

TEST3=$(\
[ -f "/home/shares/basic_lab/lab2_3.txt" ] &&  if [ $(lines=`ls /sys/block/`; for line in $lines;  do grep "$line"  /home/shares/basic_lab/lab2_3.txt  ;  done | wc -l) -gt 3 ] ; then echo "ok" ; fi   ) 

TEST4=$(\
 [ -d "/home/shares/basic_lab/lab2_4/" ] && ls -ltrah /home/shares/basic_lab/lab1_4/ |\
 egrep -i  "Mon|Tue|Wen|Thu|Fri|Sat|Sun|*_day_[1-7].txt" | wc -l|grep 49)
TEST5=$( \
[ -f "/home/shares/basic_lab/lab2_5/pinentry" ] && grep "xprop -root | \
grep \"^KDE_FULL_SESSION\"" /home/shares/basic_lab/lab1_5/pinentry | wc -l |grep 6)

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

        else
          echo "      "
          echo "      Exercise 1.5"
          echo "      "
          echo "      Copy file "/usr/bin/pinentry" to folder "/home/shares/basic_lab/lab1_5/", use any editor and remove all line havinig  this pattern  "PINENTRY_BINARY". Find line with pattern   "xprop -root \| grep \"^KDE_FULL_SESSION\""  - copy and paste 5 times. at the end of file "
          echo "      "

        fi
      else

        echo "      "
        echo "      Exercise 1.4"
        echo "      "
        echo "      Create empty files in folder "/home/shares/basic_lab/lab1_4/ " file names are: "schedule_employee_W_day_N.txt" (N = 1,2,3,4,5,6,7  W= Mon,Thu,Wed,Thu,Fri,Sat,Sun "
        echo "      "

      fi
    else

      echo "      "
      echo "      Exercise 2.3"
      echo "      "
      echo "      2.3  Print Block devices, storage devices & disks etcinformation of your system and save result: "/home/shares/basic_lab/lab2_3.txt"  "
      echo "      "

    fi
  else
    echo "	"
    echo "	Exercise 2.2"
    echo "      "
    echo "	 2.2  Print CPU information of your system and save result: "/home/shares/basic_lab/lab2_2.txt"  "
    echo "	"

  fi
else
echo "  "
echo "	Exercise 2.1"
echo "	"
echo "	  Print system information (kernel version, hostname ) of your system and save result: "/home/shares/basic_lab/lab2_1.txt"  "
echo "  "
echo "  "


fi



