#!/bin/bash 
for   arg in $@; do 
 
    if [ $arg == "abdul" ]; then 
      echo "$arg Exists"
      else 
      echo "$arg does not exist"
    fi

done 
