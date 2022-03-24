#!/bin/bash

UID_MIN=$(cat /etc/login.defs | grep "^UID_MIN" | tr -s '\t' | cut -f2)
UID_MAX=$(cat /etc/login.defs | grep "^UID_MAX" | tr -s '\t' | cut -f2)

OLDIFS=$IFS
IFS=$'\n'

echo -e "USUÁRIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO"

for i in $(cat /etc/passwd)
do
    USERID=$(echo $i = cat /etc/passwd | cut -d ":" -f3)
    if [ $USERID -ge $UID_MIN -a $USERID -le $UID_MAX  ]
    then
        USER=$(echo $i | cut -d ":" -f1)
        USERID=$(echo $i | cut -d ":" -f3)
        USERDESC=$(echo $i | cut -d ":" -f5 | tr -d ',')
        USERHOME=$(echo $i | cut -d ":" -f6)
        echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
    fi
done