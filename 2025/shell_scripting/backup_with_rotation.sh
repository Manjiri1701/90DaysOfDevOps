#!/bin/bash

#This is a script for rotational backup

date=$(date +%y-%m-%d_%H-%M-%S)
file_name=/home/ubuntu/week3-shellscripting-challenge/backup/backup_$date.zip

zip -r $file_name /home/ubuntu/week3-shellscripting-challenge

retention_count=3

ls backup/backup_*.zip | sed -e "1,${retention_count}d" | xargs -I {} rm -f {}