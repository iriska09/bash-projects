#!/bin/bash
read -p "Enter your number: " number 
 myinput=$(($number % 3))

    if [ "$myinput" -eq 0 ]; then 
      echo "$number is an even number"
      else 
      echo "$number is an odd number."
   fi