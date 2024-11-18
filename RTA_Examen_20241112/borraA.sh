#!/bin/bash

# Desmontar los volúmenes lógicos
sudo umount /var/lib/docker/
sudo umount /work/

# Desactivar el swap
sudo swapoff /dev/vg_temp/lv_swap

# Eliminar los volúmenes lógicos
sudo lvremove -f /dev/vg_datos/lv_docker
sudo lvremove -f /dev/vg_datos/lv_workareas
sudo lvremove -f /dev/vg_temp/lv_swap

# Eliminar los grupos de volúmenes
sudo vgremove -f vg_datos
sudo vgremove -f vg_temp

# Eliminar los volúmenes físicos
sudo pvremove /dev/sdb2
sudo pvremove /dev/sdc1
sudo pvremove /dev/sdc2
sudo pvremove /dev/sdb1

# Limpiar las particiones
sudo wipefs -a /dev/sdb
sudo wipefs -a /dev/sdc

# Eliminar las particiones en sdb
sudo fdisk /dev/sdb <<EOF
d
1
d
2
d
3
w
EOF

# Eliminar las particiones en sdc
sudo fdisk /dev/sdc <<EOF
d
1
d
2
d
3
d
4
w
EOF

sudo partprobe /dev/sdb
sudo partprobe /dev/sdc


for i in {1..11}; do
  if [ $i -eq 4 ]; then
    continue  # Saltar la partición 4
  else
    sudo dd if=/dev/zero of=/dev/sdb$i bs=1M count=10
  fi
done
