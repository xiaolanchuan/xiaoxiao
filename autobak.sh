#!/bin/sh
# <AUTHOR:xiaoxiao e-Mail:583077951@qq.com>
TIME=$(date +%Y.%m.%d)
/bin/tar -cf /backup/$1.$TIME.tar $1 > /dev/null 2>> /backup/$1.error.log
/bin/gzip /backup/$1.$TIME.tar
if [ $? -eq 0 ] 
then     
    echo "$! $TIME is backup successsfull"
else     
    echo "ERROR: failure $1 $TIME backup" >> /backup/$1.error.log
fi
