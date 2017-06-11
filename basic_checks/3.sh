#!/bin/bash

GREEN='\033[0;42;30m'
STD='\033[0;0;39m'

TEST11=$(\
sshpass -p 'Pa$$adam' ssh -o StrictHostKeyChecking=no  adam@localhost 2> /dev/null 'id |grep finance > /dev/null' &&  \
echo $(less /etc/shadow |grep adam | awk -F ":" '{print$5}')  | grep 45 )

TEST12=$(\
sshpass -p 'Pa$$bill' ssh -o StrictHostKeyChecking=no  bill@localhost 2> /dev/null 'id |grep devops > /dev/null'  && \
echo $(less /etc/shadow |grep bill | awk -F ":" '{print$6}')| grep 15 )

TEST13=$(\
sshpass -p 'Pa$$cora' ssh -o StrictHostKeyChecking=no  cora@localhost 2> /dev/null 'id |grep support > /dev/null'  && \
if [ $(less /etc/shadow |grep cora | gawk -F ":" '{print$8}') -eq $((`date  --date "2038-05-01" +%s`/86400)) ]; then echo "ok" ; fi | grep ok )

TEST14=$(less /etc/passwd|grep drew| egrep sbin\/nologin )



TEST21=$(\
sshpass -p 'Pa$$alex' ssh -o StrictHostKeyChecking=no  alex@localhost 2> /dev/null 'id |grep finance > /dev/null' && \
echo $(less /etc/shadow |grep alex | awk -F ":" '{print$5}') | grep 54 )

TEST22=$(\
sshpass -p 'Pa$$balu' ssh -o StrictHostKeyChecking=no  balu@localhost 2> /dev/null 'id |grep devops > /dev/null'  && \
echo $(less /etc/shadow |grep balu| awk -F ":" '{print$6}')| grep 14 )

TEST23=$(\
sshpass -p 'Pa$$cleo' ssh -o StrictHostKeyChecking=no  cleo@localhost 2> /dev/null 'id |grep support > /dev/null '  && \
if [ $(less /etc/shadow |grep cleo | gawk -F ":" '{print$7}') -eq $((`date  --date "2023-09-21" +%s`/86400)) ]; then echo "ok" ; fi | grep ok )

TEST24=$( [ -f "/home/airdelta/duke/.bashrc" ] && less /etc/passwd|grep duke| egrep sbin\/nologin  )


TEST31=$(grep "^PASS_MAX_DAYS" /etc/login.defs  | grep -P -o "\d*")
TEST32=$(grep "^PASS_MIN_DAYS" /etc/login.defs  | grep -P -o "\d*")
TEST33=$(grep "^PASS_WARN_AGE" /etc/login.defs  | grep -P -o "\d*")
TEST34=$(grep "^INACTIVE=" /etc/default/useradd | grep -P -o "\d*")


TEST41=$(\
sshpass -p 'Pa$$anna' ssh -o StrictHostKeyChecking=no  anna@localhost 2> /dev/null 'id |grep finance > /dev/null' &&  \
echo $(less /etc/shadow |grep anna | awk -F ":" '{print$5}')  | grep 40 )

TEST42=$(\
sshpass -p 'Pa$$bert' ssh -o StrictHostKeyChecking=no  bert@localhost 2> /dev/null 'id |grep devops > /dev/null'  &&  \
echo $(less /etc/shadow |grep bert | awk -F ":" '{print$6}')| grep 10 )

TEST43=$(\
sshpass -p 'Pa$$cali' ssh -o StrictHostKeyChecking=no  cali@localhost 2> /dev/null 'id |grep support > /dev/null'  && \
if [ $(less /etc/shadow |grep cali | gawk -F ":" '{print$8}') -eq $((`date  --date "2030-08-16" +%s`/86400)) ]; then echo "ok" ; fi | grep ok )

TEST44=$(less /etc/passwd|grep dana |grep 1364 | egrep sbin\/nologin )


TEST51=$(\
sshpass -p 'Pa$$alen' ssh -o StrictHostKeyChecking=no  alen@localhost 2> /dev/null 'id |grep finance > /dev/null' &&  \
echo $(less /etc/shadow |grep alen | awk -F ":" '{print$5}')  | grep 47 )

TEST52=$(\
sshpass -p 'Pa$$bala' ssh -o StrictHostKeyChecking=no  bala@localhost 2> /dev/null 'id |grep devops > /dev/null'  &&  \
echo $(less /etc/shadow |grep bala | awk -F ":" '{print$6}')| grep 17 )

TEST53=$(\
sshpass -p 'Pa$$coco' ssh -o StrictHostKeyChecking=no  coco@localhost 2> /dev/null 'id |grep support > /dev/null'  && \
if [ $(less /etc/shadow |grep coco | gawk -F ":" '{print$8}') -eq $((`date  --date "2037-12-31" +%s`/86400)) ]; then echo "ok" ; fi | grep ok )

TEST54=$( [ -f "/home/airdelta/dion/.bashrc" ] && sshpass -p 'Pa$$dion' ssh -o StrictHostKeyChecking=no  dion@localhost 2> /dev/null 'id |grep wheel ' )

task-3-1(){
	echo "  "
	echo "	Exercise 3.1"
        echo "  "
	echo "  	Create user: \"Adam\" password: \"Pa\$\$adam\","
	echo "  	  password to expire after 45 days"
	echo "  	  belongs to \"finance\" as a secondary group."
        echo "  "
        echo "  	Create user: \"Bill\" password: \"Pa\$\$bill\","
        echo "  	  password expiration warning 15 days"
        echo "  	  belongs to \"devops\" as a secondary group."
        echo "  "
        echo "  	Create user: \"Cora\" password: \"Pa\$\$cora\","
        echo "  	  Account expire date \"May 01, 2038\""
        echo "  	  belongs to \"support\" as a secondary group."
        echo "  "
        echo "  	Create user: \"Drew\" is a system account"
        echo "  	  no access to an interactive shell"
        echo "  "
}
task-3-2(){
	echo "	"
	echo "	Exercise 3.2"
        echo "  "
        echo "          Create user: \"Alex\" password: \"Pa\$\$alex\","
        echo "            password to expire after 54 days"
        echo "            belongs to \"finance\" as a secondary group."
        echo "  "
        echo "          Create user: \"Balu\" password: \"Pa\$\$balu\","
        echo "            password expiration warning 14 days"
        echo "            belongs to \"devops\" as a secondary group."
        echo "  "
        echo "          Create user: \"Cleo\" password: \"Pa\$\$cleo\","
        echo "            Account expire date "Sep 21, 2023""
        echo "            belongs to \"support\" as a secondary group."
        echo "  "
        echo "          Create user: \"Duke\" is a system account"
        echo "            home folder: /home/airdelta/duke"
        echo "  "
}
task-3-3(){
	echo "	"
	echo "	Exercise 3.3"
	echo "	"
	echo "  	Please modify sysytem settings for all new users: "
        echo "  	  - maximum number of days a password may be used = 90 ."
        echo "  	  - minimum number of days allowed between password changes = 5 ."
        echo "  	  - number of days warning given before a password expires = 11 ."
        echo "  	  - passwords inactive after expiration. "
        echo "  "
        echo "  "
}
task-3-4(){
        echo "	"
        echo "	Exercise 3.4"
        echo "  "
        echo "          Create user: \"Anna\" password: \"Pa\$\$anna\","
        echo "            password to expire after 40 days"
        echo "            belongs to \"finance\" as a secondary group."
        echo "  "
        echo "          Create user: \"Bert\" password: \"Pa\$\$bert\","
        echo "            password expiration warning 10 days"
        echo "            belongs to \"devops\" as a secondary group."
        echo "  "
        echo "          Create user: \"Cali\" password: \"Pa\$\$cali\","
        echo "            Account expire date \"Aug 16, 2030\""
        echo "            belongs to \"support\" as a secondary group."
        echo "  "
        echo "          Create user: \"Dana\" uid- 1364  nas nologin "
        echo "  "
}
task-3-5(){
        echo "  "
        echo "  Exercise 3.5"
        echo "  "
        echo "          Create user: \"Alen\" password: \"Pa\$\$alen\","
        echo "            password to expire after 47 days"
        echo "            belongs to \"finance\" as a secondary group."
        echo "  "
        echo "          Create user: \"Bala\" password: \"Pa\$\$bala\","
        echo "            password expiration warning 17 days"
        echo "            belongs to \"devops\" as a secondary group."
        echo "  "
        echo "          Create user: \"Coco\" password: \"Pa\$\$coco\","
        echo "            Account expire date \"Dec 31, 2037\""
        echo "            belongs to \"support\" as a secondary group."
        echo "  "
        echo "          Create user: \"Dion\" password: \"Pa\$\$dion\", "
        echo "  	  home folder: /home/airdelta/dion , with sudo access "        
        echo "  "
}






if  [ "$TEST11" ] && [ "$TEST12" ] && [ "$TEST13" ] && [ "$TEST14" ]  ; then
  echo "	"
  echo -e "task 3.1 - ${GREEN} DONE  ${STD}"
  if  [ "$TEST21" ] && [ "$TEST22" ] && [ "$TEST23" ] && [ "$TEST24" ]  ; then
    echo "        "
    echo -e "task 3.2 - ${GREEN} DONE  ${STD}"
    if  [ "$TEST31" -eq 90 ] && [ "$TEST32" -eq 5 ] && [ "$TEST33" -eq 11 ] && [ "$TEST34" -eq 0 ]  ; then
      echo "        "
      echo -e "task 3.3 - ${GREEN} DONE  ${STD}"
      if  [ "$TEST41" ] && [ "$TEST42" ] && [ "$TEST43" ] && [ "$TEST44" ]  ; then
        echo "        "
        echo -e "task 3.4 - ${GREEN} DONE  ${STD}"
        if   [ "$TEST51" ] && [ "$TEST52" ] && [ "$TEST53" ] && [ "$TEST54" ]  ; then
          echo "        "
          echo -e "task 3.5 - ${GREEN} DONE  ${STD}"
        else
          task-3-5
        fi
      else
        task-3-4
      fi
    else
      task-3-3
    fi
  else
    task-3-2 
  fi
else
  task-3-1
fi



