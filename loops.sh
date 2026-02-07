#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then 

    echo "$R Run this script with root user access $N" | tee -a $LOGS_FILE
    exit 1

fi

mkdir -p $LOGS_FOLDER

    VALIDATE(){
        if [ $1 -ne 0 ]; then
    echo -e "$2.......FAILURE $R"    | tee -a $LOGS_FILE
    exit 1
else

    echo  "$2.......SUCCESS $G"    | tee -a $LOGS_FILE
fi    

    }


for package in $@

do

    dnf list installed $package $G &>>$LOGS_FILE

    if [ $? -ne 0 ]; then

        echo "$package not installed,Installing $package"
        dnf install $package -y &>>$LOGS_FILE
        VALIDATE $? "Installing $package"
    else 
        echo "$package Already installed,SKIPPING" | tee -a $LOGS_FILE

     fi   

done