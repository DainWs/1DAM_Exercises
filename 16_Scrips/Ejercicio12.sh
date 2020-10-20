#!/bin/bash
#Jose Antonio Duarte Perez

echo "tabla del $1 : "

for (( i = 1; i < 11; i++ ))
do
	result=$(($1 * $i))
	echo "$1 * $i = $result"
done
