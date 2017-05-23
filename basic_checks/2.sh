#!/bin/bash
echo -n " cheking task -> 2.1 " && \
less /home/shares/basic_lab/lab2_1.txt | grep Example > /dev/null && \
echo ".... Succsessful, task 1.1 - DONE " && \
echo -n " cheking task -> 2.2 " && \
less /home/shares/basic_lab/lab2_2.txt | grep yum > /dev/null && \
less /home/shares/basic_lab/lab1_2.txt | wc -l |grep 25 > /dev/null && \
echo ".... Succsessful,  task 1.2 - DONE " && \
echo -n " cheking task -> 2.3 " && \
less /home/shares/basic_lab/lab2_3.txt | grep video > /dev/null && \
less /home/shares/basic_lab/lab2_3.txt | wc -l |grep 33 > /dev/null && \
echo ".... Succsessful,  task 1.3 - DONE "





