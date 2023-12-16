#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/TMP/$0-$TIMESTAMP.log"
echo "script started executing at $TIMESTAMP" &>> LOGFILE
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "Error: : $2.. failed"
    exit 1
    else 
    echo "$2 installed successfully"
    fi }
    if [ $ID -ne 0 ]
    then 
    echo "$RError not a root user$N"
    exit 1
    else 
    echo "$Groot user$N"
    fi
    yum install mysql -y
    VALIDATE $? "MYSQL installation SUCCESS"
    yum install git -y
    VALIDATE $? "GIT installation SUCCESS"