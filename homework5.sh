#!/bin/bash
# User input
read -p " Do you want to check CPU,MEM STORAGE usage?: " y 

   # this assumes the user will input "yes"
   if [ $y = yes ]; then
   #it findes the cpu and findes the Percentage of CPU
    result=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')
     echo $result > /var/log/system/cpu.log
   

    #$result > /var/log/system/CPU.log
        
    fi 