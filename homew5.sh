#!/bin/bash 

# User input
read -p " Do you want to check MEM STORAGE usage?: " y 

   # this assumes the user will input "yes"
   if [ $y = yes ]; then
   #it findes the cpu and findes the Percentage of CPU
    result=$"cat /proc/meminfo | grep MemTotal:"
     echo $result > /var/log/system/mem.log
   

    #$result > /var/log/system/CPU.log
        
    fi 

