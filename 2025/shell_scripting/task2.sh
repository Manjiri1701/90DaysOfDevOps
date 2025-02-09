#!/bin/bash

#This is a script to delete the user

read -p " enter the username that needs to be deleted: " username

grep -i "$username" /etc/passwd > /dev/null
return_status=$?

if [[ $return_status == 0 && ("$1" == "-d" || "$1" == "--delete") ]];
then 
        sudo deluser $username > /dev/null
        echo " user $username deleted successful"
else
        echo "the user does not exits or the argument does not contains the flag -d or --delete"
fi