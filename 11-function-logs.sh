#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script/$0.log"

if  [ $USERID -ne 0 ]; then
    echo "Please run this script wirh root user access" | tee -a $LOGS_FILE
fi

mkdir -p $LOGS_FOLDER 

#By default shell will not execute, only executed when called
VALIDATE(){
    if [ $? -ne  0 ]; then
        echo "Installing Nginx ... FAILURE" | tee -a $LOGS_FILE
        exit 1
    else
        echo "Installing Nginx ... SUCCESS"
    fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"