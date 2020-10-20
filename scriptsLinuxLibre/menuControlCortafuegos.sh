#!/bin/bash
#Author: Jose Antonio Duarte Perez

function exception() {
        echo $1
        exit
}

function listRules() {
        iptables -S
}

function addRule() {
        read -p "Rule Name : " name
        read -p "protocol : " protocol
        read -p "from : " from
        read -p "to : " to
        read -p "Accept or Deny? :" state
        iptables -A $name -p $protocol -s $from -d $to $state
        exit 0
}

function deleteRule() {
        read -p "Rule name to Delete :" name
        iptables -D $name
        exit 0
}

function replaceRule() {
        read -p "Rule name :" name
        read -p "Rulenum :" num
        iptables -A $name $num
        exit 0
}

read -p "A) add a Rule\n
D) delete a Rule\n
R) replace a Rule\n
L) list all rules\n
 (A/D/R/L) :" option

selectA=false
selectD=false
selectR=false

selectedOPT=false

case "$option" in
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
esac


if [ $selectA == true ];
then
        addRule
fi

if [ $selectD == true ];
then
        deleteRule
fi

if [ $selectR == true ];
then
        replaceRule
fi
