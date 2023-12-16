#!/bib/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script started executing at $TIMESTAMP" &>> $LOGFILE
R="/e[31m"
G="/e[32m"
Y="/e[e33m"
N="/e[0m"

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

echo "All arguments passed: $@"
# git mysql postfix net-tools
# package=git for first time
do 
yum list installed $package #check installed or not
if [ $? -ne 0 ]
then
yum install $package -y #install the package
VALIDATE $? "Installation of $package" #validate
else
echo -e "$package is already installed ... $Y SKIP $N"
fi
done
