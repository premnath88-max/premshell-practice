#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then 

    echo "Run this script with root user access"
    exit 1

fi

    echo "Installling Nginx"    


dnf install nginx -y


if [ $? -ne 0 ]; then
    echo  "INSTALLING NGINX.......FAILURE "
    exit 1

else

    echo  "INSTALLING NGINX.......SUCCESS "

fi    


dnf install mysql -y

if [ $? -ne 0 ] ;then

echo  "INSTALLING MYSQL.......FAILURE "

exit 1

else

echo  "INSTALLING MYSQL.......SUCCESS "

fi

dnf install nodejs -y

if [ $? -ne 0 ]

echo "INSTALLLING NODEJS ......FAILURE"

exit 1

else

echo "INSTALLLING NODEJS ......SUCCESS"

fi