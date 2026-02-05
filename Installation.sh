#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


USERID=$(id -u)

if [ $USERID -ne 0 ]; then 

    echo "Run this script with root user access"
    exit 1

fi

    echo "Installling Nginx"    


dnf install nginx -y


if [ $? -ne 0 ]; then
    echo -e "INSTALLING NGINX.......FAILURE $R"
    exit 1

else

    echo -e "INSTALLING NGINX.......SUCCESS $G"

fi    
