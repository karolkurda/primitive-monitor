#!/bin/bash

touch /tmp/sysinfo.txt


while :
do
        : > /tmp/sysinfo.txt
        echo "##########################################################" >> /tmp/sysinfo.txt
        date >> /tmp/sysinfo.txt
        echo "##########################################################" >> /tmp/sysinfo.txt
        uptime >> /tmp/sysinfo.txt
        echo "##########################################################" >> /tmp/sysinfo.txt
        free -m >> /tmp/sysinfo.txt
        echo "##########################################################" >> /tmp/sysinfo.txt
        df -h >> /tmp/sysinfo.txt
        echo "##########################################################" >> /tmp/sysinfo.txt
        #date >> /tmp/sysinfo.txt

        dane=$(cat /tmp/sysinfo.txt)
        tput sc
        echo -ne "$dane"
        tput rc
        sleep 1
done
