#!/bin/bash

apt-get update && apt-get upgrade
apt-get install squid genometools

mv /etc/squid/squid.conf /etc/squid/squid.conf.bkp
grep -Eiv '(^#|^$)' /etc/squid/squid.conf.bkp &gt; /etc/squid/squid.conf