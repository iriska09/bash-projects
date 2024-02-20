#!/bin/bash
which wget || clear &&  yum install wget -y && clear 
which zip || clear &&  yum install zip -y && clear
yum install tree -y || clear
read -p " install apache y/n ?" install
if [ $apache="y" ]; then 
yum install httpd -y || echo "you already installed apache " && clear
systemctl enable httpd && systemctl start httpd && clear && systemctl status httpd | grep  Active: 
read -p " Enter the website link: " link 
cd /tmp/ && wget $link && echo $link | echo $link | awk -F"/" '{print $9}' ;
unzip $string && rm -f *.zip
string=$( echo $link | awk -F"/" '{print $9}';)
echo $string | awk -F"." '{print $1}';

mv $two* /var/www/html
tree /var/ww/html 
bob=$(tree /var/www/html/ tail -n 1)
if [$bob "!= 0 directories, 0 files"]; then
read -p " Do you want remove files y/n ?" y
if [ $yes="y"];
then rm -rf /var/www/html/*
else 
echo " no more file exist, try again"
fi
fi
fi