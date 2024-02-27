#!/bin/bash 
read -p " Hello ,do you want to check if httpd is runing  y/n?" apache
if [ $apache=y ]; then 
    systemctl status httpd | grep Active: 
    if [ $? != 0 ]; then
        read -p "do you want to install httpd ? y/n:" inastall
        if [ $install=y ]; then
            yum install httpd -y && systemctl start httpd && systemctl status httpd | grep Active:
            status=$(systemctl status httpd | grep "Active")
       
        else
        
        systemctl status httpd | grep -i Active:
         
        fi
    fi 
    
fi
