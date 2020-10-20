Lo unico que habria que hacer seria introducir los discos duros, crear las particiones con :

fdisk /dev/sdb
    m
    n (Creamos La Primera particion del primer disco)
    n (Creamos La Segunda particion del primer disco)
    w (Guardamos particiones)

fdisk /dev/sdc
    m
    n (Creamos La Primera particion del segundo disco)
    n (Creamos La Segunda particion del segundo disco)
    n (Creamos La Tercera particion del segundo disco)
    w (Guardamos particiones)

Y ahora hay que formatearlos con el sistema de archivos deseado

mkfs.ext4 /dev/sdb1
mkfs.fat  /dev/sdb2

mkfs.ext4 /dev/sdc1
mkfs.ntfs /dev/sdc2
mkfs.fat  /dev/sdc3

A parte de eso seria entrar al fichero /etc/fstab y modificarlo añadiendo las particiones y sis sistemas de archivos
