#!/bin/bash
#Author: Jose Antonio Duarte Perez

usage="
$(basename "$0") [-h] [-A|-D|-R] [-L]
-- this program is use to controll the firewall.

where:
    -h          show this help page.
    -A          add rule to the firewall.
    -D          removes a rule from a specified chain.
    -R          replace a rule.
    -L          shows all rules.

example:
        $(basename "$0") -A INPUT tcp 192.168.1.0 8.8.8.8 ACCEPT
        $(basename "$0") -D INPUT
        $(basename "$0") -R INPUT 5
        $(basename "$0") -L

By Jose Antonio Duarte Perez."

function exception() {
        echo $1
        showHelp
}

function showHelp() {
        echo "$usage"
        exit
}

function listRules() {
        iptables -S
}

selectA=false
selectD=false
selectR=false

selectedOPT=false

while getopts ':h:RADR:L' option; do
  case "$option" in
        h) showHelp
        ;;
        A)
        if [ $selectedOPT == false ];
        then
                selectA=true
                selectedOPT=true
        else
                exception "Cant Use A argument with D or R argument."
        fi
        ;;
        D)
        if [ $selectedOPT == false ]; 
        then
                selectD=true
                selectedOPT=true 
        else
                exception "Cant Use D argument with A or R argument."
        fi
        ;;
        R)
        if [ $selectedOPT == false ]; 
        then
                selectR=true
                selectedOPT=true 
        else
                exception "Cant Use R argument with D or A argument."
        fi
        ;;
        L) listRules
        ;;
        \?) printf "illegal option: -%s\n" "$OPTARG" >&2
        echo "$usage" >&2
        exit
        ;;
  esac
done
shift $((OPTIND - 1))


if [ $selectA == true ];
then
        if [ -z "$5" ];
        then
                exception "Missing Arguments for A option : name protocol from to status"
        fi
        iptables -A $1 -p $2 -s $3 -d $4 $5
fi

if [ $selectD == true ];
then
        if [ -z "$1" ];
        then
                exception "Missing Arguments for D option : name"
        fi
        iptables -D $1
fi

if [ $selectR == true ];
then
        if [ -z "$2" ];
        then
                exception "Missing Arguments for D option : name Rulenum"
        fi
        iptables -R $1 $2
fi


