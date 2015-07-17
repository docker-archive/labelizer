#!/bin/sh
yaml2json /image/tutum.yml >> /dev/null 2>&1

if [ $? -ne 0 ]; then
    yaml2json /image/tutum.yml 2>&1 | grep -E 'TypeError|near'
else
    foo='LABEL co.tutum.yml="'
    foo1=$(yaml2json /image/tutum.yml | tr "\n" " " | sed 's/"/\\"/g')
    foo2='"'
    echo " " >> /image/Dockerfile
    echo $foo$foo1$foo2 >> /image/Dockerfile
fi

