#!/bin/bash

ID=$(id -u)
    if [ $ID -ne 0 ]
    then
    echo "Error not a root user"
    exit  1
    else 
    echo "root user"
    fi

    yum install mysql -y
    if [$ID -   ne 0 ]
    then 
    echo "Error: : installing MYSQL failed"
    else
    echo "installing mysql success"
    fi
    yum install git -y
    if [$ID -   ne 0 ]
    then 
    echo "Error: : installing GIT failed"
    else
    echo "installing GIT success"
    fi
