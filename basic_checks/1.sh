#!/bin/bash

GREEN='\033[0;42;30m'
STD='\033[0;0;39m'

TEST1=$(\
[ -f "/home/shares/basic_lab/lab1_1.txt" ] && less /home/shares/basic_lab/lab1_1.txt | grep Example  )

TEST2=$(\
[ -f "/home/shares/basic_lab/lab1_2.txt" ] && less /home/shares/basic_lab/lab1_2.txt | grep yum > /dev/null && \
less /home/shares/basic_lab/lab1_2.txt | wc -l |grep 25 )

TEST3=$(\
[ -f "/home/shares/basic_lab/lab1_3.txt" ] &&  less /home/shares/basic_lab/lab1_3.txt |\
 grep video > /dev/null && less /home/shares/basic_lab/lab1_3.txt | wc -l |grep 33) 
TEST4=$(\
 [ -d "/home/shares/basic_lab/lab1_4/" ] && ls -ltrah /home/shares/basic_lab/lab1_4/ |\
 egrep -i  "Mon|Tue|Wen|Thu|Fri|Sat|Sun|*_day_[1-7].txt" | wc -l|grep 49)
TEST5=$( \
[ -f "/home/shares/basic_lab/lab1_5/pinentry" ] && grep "xprop -root | \
grep \"^KDE_FULL_SESSION\"" /home/shares/basic_lab/lab1_5/pinentry | wc -l |grep 6)

if  [ "$TEST1" ] ; then
  echo "	"
  echo -e "task 1.1 - ${GREEN} DONE  ${STD}"
  if  [ "$TEST2" ] ; then
    echo "        "
    echo -e "task 1.2 - ${GREEN} DONE  ${STD}"
    if  [ "$TEST3" ] ; then
      echo "        "
      echo -e "task 1.3 - ${GREEN} DONE  ${STD}"
      if  [ "$TEST4" ] ; then
        echo "        "
        echo -e "task 1.4 - ${GREEN} DONE  ${STD}"
        if  [ "$TEST5" ] ; then
          echo "        "
          echo -e "task 1.5 - ${GREEN} DONE  ${STD}"

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
      echo "      Exercise 1.3"
      echo "      "
      echo "      Print last 33 lines /etc/mime.types append result: "/home/shares/basic_lab/lab1_3.txt" "
      echo "      "

    fi
  else
    echo "	"
    echo "	Exercise 1.2"
    echo "      "
    echo "	Print first 25 lines /etc/yum.conf and save result: "/home/shares/basic_lab/lab1_2.txt" "
    echo "	"

  fi
else
echo "  "
echo "	Exercise 1.1"
echo "	"
echo " 	Read manual pages for "man" and figureout how to use util "man" as Equivalent to util- "apropos" (Search the short manual page descriptions for keywords and display any matches).  Read manual for "BASH" and read more about: "Pipelines" and "Redirections". Please find utils for "matching" pattern. Please read manual for util "systemd-cat". Find lines contain: 'shell pipeline' and 5 lines after matching lines  and Save it in file: "/home/shares/basic_lab/lab1_1.txt" " 
echo "  "
echo "  "


fi



