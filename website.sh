#!/bin/bash 
read -p " Hello ,do you want to check if httpd is runing  y/n?" apache
if [ $apache=y ]; then 
systemctl status httpd | grep Active: && read -p "do you want to install httpd ? y/n:" inastall
status=$(systemctl status httpd | grep "Active")
if [$status!= "Active: inactive (dead)"]; then 
echo $status 
    echo "installing apache "s
else 
    read -p "Do you want to install httpd ? y/n:" install
if [$install=y]; then
yum install httpd -y && systemctl start httpd && systemctl status httpd | grep Active:

fi 
fi 
fi