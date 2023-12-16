#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then 
echo "Error not a root user"
else 
echo "root user"
fi
yum install mysql -y
if [$ID -ne 0 ]
then
echo "Installing of mysql failed"
else 
echo "installed mysql successfully"
fi
yum install git -y
if [$ID -ne 0 ]
then
echo "Installing of git failed"
else 
echo "installed git successfully"
fi
