#!/bin/bash
#PARTICION Y FORMATO
sudo fdisk /dev/sdb << EOF
n
p


+700M
n
p


+10M
n
e



t
1
82
t
2
8E

w
EOF

sudo fdisk /dev/sdc << EOF
n
p


+1.5G
n
p


+300M
n
e



t
1
8E
t
2
8E

w
EOF

#LIMPIEZA DE PARTICIONES Y CREACION DE VGS
sudo wipefs -a /dev/sdb2 /dev/sdc1 /dev/sdc2
sudo pvcreate /dev/sdb2 /dev/sdc1 /dev/sdc2
sudo vgcreate vg_datos /dev/sdb2 /dev/sdc1 /dev/sdc2
sudo vgcreate vg_temp /dev/sdb1

#CREACION DE LVS
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap

#FORMATEADO DE LVS
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas

#MONTAJE DE LVS Y SWAP
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/

#-----------------------------------------------------------------------------------#
#COMANDOS QUE UTILIZO PARA HACER LA EXTENSION Y  EL RESIZE DEL DIRECTORIO DE DOCKER.
#-----------------------------------------------------------------------------------#
sudo lvextend -L +292M /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker


#MUESTRA LO REALIZADO POR EL SCRIPT
echo "Particiones:"
lsblk
echo "PV:"
sudo pvs
echo "LV"
sudo lvs
echo "GV"
sudo vgs
echo "SWAP"
free -h
echo "MONTAJE"
df -h

