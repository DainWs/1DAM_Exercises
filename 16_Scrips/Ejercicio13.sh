#!/bin/bash
#Jose Antonio Duarte Perez

#Supongo que se refiere a las Iptables

iptables -X
iptables -Z
iptables -F
iptables -t mangle -F
iptables -t nat -F

iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT

iptables -P FORWARD ACCEPT
iptables -I INPUT -j ACCEPT