#!/bin/bash
ID=$(id -u)
    if [ $ID -ne 0 ]
    then 
    echo "Error not a root user"
    exit 1
    else 
    echo "root user"
    fi
    yum install mysqld -y
    if [ $ID -ne 0 ]
    then
    echo "Installing of mysql failed"
    exit 1
    else 
    echo "installed mysql successfully"
    fi
    yum install git -y
    if [ $ID -ne 0 ]
    then
    echo "Installing of git failed"
    exit 1
    else 
    echo "installed git successfully"
    fi
