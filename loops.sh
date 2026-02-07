#!/bin/bash
Y='\e[33m'
R='\e[31m'
G='\e[32m'
B='\e[34m'
N='\e[0m' # No Color (resets the text attributes)

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
    echo -e "$2....... $R FAILURE $N"    | tee -a $LOGS_FILE
    exit 1
else

    echo  "$2....... $G SUCCESS $N"    | tee -a $LOGS_FILE
fi    

    }


for package in $@

do

    dnf list installed $package  &>>$LOGS_FILE

    if [ $? -ne 0 ]; then

        echo "$package not installed,Installing $package"
        dnf install $package -y &>>$LOGS_FILE
        VALIDATE $? "Installing $package"
    else 
        echo "$package Already installed ... $Y SKIPPING $N"

     fi   

done