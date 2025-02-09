#!/bin/bash

#This is script for creating user

create_user() {
        read -sp "enter the password for $username: " password
        sudo useradd $username
        echo "$username:$password" | sudo chpasswd
       
        }

read -p "enter username: " username

grep -i "$username" /etc/passwd > /dev/null
return_status=$?

if [[ $return_status != 0 && ("$1" == "-c" || "$1" == "--create") ]];
then
        create_user
        echo " user $username created sucessfully"
else
       echo "The user already exist or the argument does not contain the flag -c or --create"
fi
