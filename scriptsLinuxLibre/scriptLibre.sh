#!/bin/bash
#Author: Jose Antonio Duarte Perez

function createDir() {
	mkdir $1
}

function deleteDir() {
	rmdir $1
}

function copyFile() {
	cp $1 $2
}

function grantPrivileges() {
	chmod $1 $2
}

read -p "1) Create Directory\n
2) delete Directory\n
3) copy file\n
4) grant privileges\n
 (1/2/3/4) :" option
 
 case "$option" in
    1)
	read -p "Directory :" dir
	createDir $dir
    ;;
    2)
    read -p "Directory :" dir
	deleteDir $dir
    ;;
    3)
    read -p "From File :" from
	read -p "To File :" to
	copyFile $from $to
    ;;
    4)
	read -p "Privileges (XXX Ej: 777) :" privileges
	read -p "To File :" to
	copyFile $privileges $to
    ;;
esac
