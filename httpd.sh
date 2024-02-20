#!/bin/bash
#!/bin/bash
which wget || clear && dnf install wget -y && clear 
which zip || clear && dnf install zip -y && clear
dnf install tree -y || clear

read -p "check if apache there y/n" y
if [ $y= "y" ]; then 
  systemctl httpd | grep i " active "
    
if [[ $apache1 ="no httpd in" ]]; then 

read -p "install apache?y/n:" apache
if [ $apache == "y" ]; then 
    yum install httpd -y && clear || clear
    systemctl enable httpd && systemctl start httpd && clear && systemctl status httpd | grep Active:
    bob=$(tree /var/www/html/ | tail -n 1)
    if [[ $bob != "0 directories, 0 files" ]]; then 
        read -p "Do you want to remove website YES/no": YES
        if [ $YES == "YES" ]; then
            rm -rf /var/www/html/*

        else 
            echo "invalid obtion, pleas try again"
        fi
    fi
    read -p "Enter the link" link
    cd /tmp && wget $link && echo $link | awk -F "/" '{print $9}'
    
    string=$(echo $link | awk -F "/" '{print $9}')
    name=$(echo $string | awk -F "." '{print $1}')
    unzip $name && rm -rf $string
    mv $name*/* /var/www/html 

fi
fi
fi