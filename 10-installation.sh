#!/bin/bash

USERID=$(id -u)

if  [ $USERID -ne 0 ]; then
    echo "Please run this script wirh root user access"
fi

echo "Installating Nginx"
dnf install nginx -y

#By default shell will not execute, only executed when called
VALIDATE(){
if [ $? -ne  0 ]; then
    echo "Installing Nginx ... FAILURE"
    exit 1
else
    echo "Installing Nginx ... SUCCESS"
fi
}