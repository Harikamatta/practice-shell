#!/bin/bash
ID=$(id -u)
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
    echo "Error not a root user"
    exit 1
    else 
    echo "root user"
    fi
    yum install mysql -y
    VALIDATE $? "MYSQL installation SUCCESS"
    yum install git -y
    VALIDATE $? "GIT installation SUCCESS"