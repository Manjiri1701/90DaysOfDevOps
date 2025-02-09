#!/bin/bash

#This is script to check the UID of all the users


if [[ ("$1" == "-l") || ("$1" == "--list") ]];
then 
        awk -F: '{print $1, $3}' /etc/passwd
else
        echo "the user does not exist"
fi
