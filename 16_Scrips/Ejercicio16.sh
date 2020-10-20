#!/bin/bash
#Jose Antonio Duarte Perez

# Yo lo que hare sera crear un contenedor 
# docker (es una especie de maquina virtual pero para procesos/demonios/etc)

## Instalacion de docker y git
apt-get install docker git
snap install docker
apt install docker.io

## Nos movemos a /tmp para realizar las operaciones
cd /tmp

## Ahora vamos a clonar un software de un router para docker en linux.
git clone https://github.com/brannondorsey/mitm-router

## y procedemos a crear el contenedor docker con el software
cd mitm-router
/snap/bin/docker build . -t brannondorsey/mitm-router

## una vez hemos creado el contenedor lo ejecutamos con 
## ciertos privilegio y parametros
/snap/bin/docker run -it --net host --privileged -e AP_IFACE="wlan0" -e INTERNET_IFACE="eth0" -e SSID="Public" -v "$(pwd)/data:/root/data" \brannondorsey/mitm-router

## Y ya estaria, solo queda destacar que el comando anterior 
## se puede utilizar para el resto de la configuracion



