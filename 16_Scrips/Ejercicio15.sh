#!/bin/bash
#Jose Antonio Duarte Perez

if [[ $2 == "entrada" ]]
	then
	if [[ $3 == "aceptar" ]]
		then
		iptables -A INPUT -s $1 -j ACCEPT
		
	elif [[ $3 == "denegar" ]]
		then
		iptables -A INPUT -s $1 -j DROP
	fi

elif [[ $2 == "salida" ]]
	then
	if [[ $3 == "aceptar" ]]
		then
		iptables -A INPUT -s $1 -j ACCEPT

	elif [[ $3 == "denegar" ]]
		then
		iptables -A INPUT -s $1 -j DROP
	fi
fi
