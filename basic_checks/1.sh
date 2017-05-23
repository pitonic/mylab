#!/bin/bash

echo -n " cheking task -> 1.1 " && \
less /home/shares/basic_lab/lab1_1.txt | grep Example > /dev/null && \
echo ".... Succsessful, task 1.1 - DONE " && \

echo -n " cheking task -> 1.2 " && \
less /home/shares/basic_lab/lab1_2.txt | grep yum > /dev/null && less /home/shares/basic_lab/lab1_2.txt | wc -l |grep 25 > /dev/null && \
echo ".... Succsessful,  task 1.2 - DONE " && \

echo -n " cheking task -> 1.3 " && \
less /home/shares/basic_lab/lab1_3.txt | grep video > /dev/null && less /home/shares/basic_lab/lab1_3.txt | wc -l |grep 33 > /dev/null && \
echo ".... Succsessful,  task 1.3 - DONE " && \

echo -n " cheking task -> 1.4 " && \
ls -ltrah /home/shares/basic_lab/lab1_4/ | egrep -i  "Mon|Tue|Wen|Thu|Fri|Sat|Sun|*_day_[1-7].txt" | wc -l|grep 49 > /dev/null && \
echo ".... Succsessful,  task 1.4 - DONE " && \

echo -n " cheking task -> 1.5 " && \
grep "xprop -root | grep \"^KDE_FULL_SESSION\"" /home/shares/basic_lab/lab1_5/pinentry | wc -l |grep 6 > /dev/null && \
echo ".... Succsessful,  task 1.5 - DONE "

