#!/bin/bash
#Jose Antonio Duarte Perez

fileCount=0
dirCount=0
for i in $@
do
	if [[ -f $i ]]
		then
		fileCount=$(($fileCount+1))
	elif [[ -d $i ]]
		then
		dirCount=$(($dirCount+1))
	fi
done

echo "ficheros: $fileCount"
echo "directorios: $dirCount"
