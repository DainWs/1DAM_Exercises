#!/bin/bash

iptables -t nat -A PREROUTING -p tcp -s 192.168.1.0/24 --dport 80 -j REDIRECT --to-port 3128
iptables -t nat -A PREROUTING -p tcp -s 192.168.1.0/24 --dport 443 -j REDIRECT --to-port 3128
iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -d 0.0.0.0/0 -o enp0s3 -j MASQUERADE