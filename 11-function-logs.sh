#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/ll-function-logs.log"

if  [ $USERID -ne 0 ]; then
    echo "Please run this script wirh root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER 

if [[ ! -f "$LOGS_FILE" ]]; then
   touch "$LOGS_FILE"
   echo "file is created"
else
   echo "file already created"
fi


#By default shell will not execute, only executed when called
VALIDATE(){
    if [ $1 -ne  0 ]; then
        echo "$2 ... FAILURE" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ... SUCCESS" | tee -a $LOGS_FILE
    fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"