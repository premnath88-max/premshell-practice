#!/bin/bash

USERID=$(id -u)

if [ $USER -ne 0 ]; then 

    echo "Run this script with root user access"
    exit 1

fi

    echo "Installling Nginx"    


dnf install nginx -y

