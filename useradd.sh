#!/bin/bash 
echo "**creat a user**"
echo " steps: ./useradd ARG1[username] ARG2 [user-group] ARG3 [home-dir]"

if [ $# -le 0 ]; then 
echo "1 Argument required , try again.." 

