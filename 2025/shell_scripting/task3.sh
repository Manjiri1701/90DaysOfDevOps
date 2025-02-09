#!/bin/bash

#This is a shell script for changing the password of an existing user

reset_passwd(){
        read -sp "enter the new password for user $username: " new_passwd
        echo "$username:$new_passwd" | sudo chpasswd > /dev/null
}

read -p " enter the username: " username
 
cat /etc/passwd | grep -i "$username" > /dev/null
return_status=$?

if [[ $? == 0 && ("$1" == "-r" || "$1" == "--reset") ]];
then 
        reset_passwd
        echo " password reset successfully"
else
        echo "user does not exist or the arguemnt doest not contain the flag -r or --reset"
fi