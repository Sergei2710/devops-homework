#!/bin/bash -l

envExist=$(env | grep $1)

if [ $envExist ]
then
        echo "INFO: Env $1 EXIST" > /proc/1/fd/1
else
        echo "ERROR: ENV $1 is not SET!!!" > /proc/1/fd/2
fi
