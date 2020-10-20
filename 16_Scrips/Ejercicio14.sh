#!/bin/bash
#Jose Antonio Duarte Perez

#Supondre de nuevo que se refiere a las Iptables

iptables -X
iptables -Z
iptables -F
iptables -t mangle -F
iptables -t nat -F

iptables -P INPUT DROP
iptables -P OUTPUT DROP

iptables -P FORWARD DROP
iptables -I INPUT -j DROP