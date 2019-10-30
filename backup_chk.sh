#!/bin/sh
# <AUTHOR:xiaoxiao e-Mail:583077951@qq.com> 
#  This script is used to check the /backup Partion 
#  If the Partion Great than 90%,then mail root 
VAR=`df |grep "/backup" |awk '{print $5}' |sed 's/%//g'`
echo $VAR
until [ $VAR -gt 90 ]
do
     echo "File system /backup is nearly full" |mail root
     VAR=`df |grep "/backup" |awk '{print $5}' |sed 's/%//g'`
     sleep 3600
done
