sudo apt update && sudo apt upgrade -y
sudo reboot
sudo apt install build-essential dkms linux-headers-$(uname -r)
sudo reboot
sudo mount /dev/cdrom /mnt
cd /mnt
sudo ./VBoxLinuxAdditions.run
cd ..
sudo reboot
ls -al ~/.ssh
sudo ls -al ~/.ssh
ssh-keygen -t ed25519
ls -l
ls -la
ls -al ~/.ssh
cat id_ed25519.pub
cd .ssh/
cat id_ed25519.pub 
cd ..
ssh -T git@github.com
git config --global user.name "emmanuelmartindavid"
git config --global user.email "emmanuel.david.martin77@gmail.com"
ssh -T git@github.com
ls
mkdir repogit
ls
cd repogit/
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martin.git
ls
cd UTNFRA_SO_1P2C_2024_Martin/
tree
cd ..
sudo apt install tree
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
tree
git status
cd ..
mkdir pruebas
ls
cd pruebas/
cat << EOF > borraMount.sh
#!/bin/bash
sudo umount /mis_directorios/alumno_1/parcial_1
sudo umount /mis_directorios/alumno_1/parcial_2
sudo umount /mis_directorios/alumno_1/parcial_3
sudo umount /mis_directorios/alumno_2/parcial_1
sudo umount /mis_directorios/alumno_2/parcial_2
sudo umount /mis_directorios/alumno_2/parcial_3
sudo umount /mis_directorios/alumno_3/parcial_1
sudo umount /mis_directorios/alumno_3/parcial_2
sudo umount /mis_directorios/alumno_3/parcial_3
sudo umoun
EOF

chmod 755 borraMount.sh 
nano borraMount.sh 
cat << EOF > puntoB.sh
#!/bin/bash
#Particionamiento en 10 partes del disco.
sudo fdisk /dev/sdb <<EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e



n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF

for i in {1..11}; do   if [ $i -ne 4 ]; then 	sudo mkfs -t ext4 /dev/sdb$i;   fi; done
AC=1
PC=1
for i in {1..11}; do   if [ $i -ne 4 ]; then      sudo mount /dev/sdb$i /mis_directorios/alumno_$AC/parcial_$PC;      PC=$((PC + 1));      if [ $PC -eq 4 ]; then         PC=1;         AC=$((AC + 1));      fi;   fi; done
lsblk
ls
cat puntoB.sh 
chmod 755 puntoB.sh 
nano puntoB.sh 
touch borraParticiones.sh
cat borraParticiones.sh 
nano borraParticiones.sh 
chmod 755 borraParticiones.sh 
cat << EOF > puntoA.sh
#!/bin/bash
#sudo mkdir -p / {alumno_1/parcial_{1..3},alumno_2/parcial_{1..3},alumno_3/parcial_{1..3},profesor} 
sudo mkdir -p /mis_directorios/{alumno_1/parcial_{1..3},alumno_2/parcial_{1..3},alumno_3/parcial_{1..3},profesor}
EOF

chmod 755 puntoA.sh 
nano puntoA.sh 
exit
lsblk
cd pruebas/
ls
./puntoA.sh 
cd /
ls
cd mis_directorios/
tree
cd
cd pruebas/
./puntoB.sh 
cd /
mount | grep "mis_directorios" 
cd
lsblk
cd pruebas/
./borraParticiones.sh 
./borraMount.sh 
sudo reboot
cd /
mount | grep "mis_directorios" 
cd
lsblk
cd pruebas/
nano puntoB.sh 
./puntoB.sh 
lsblk
cd /
mount | grep "mis_directorios" 
cd
cd pruebas/
./borraParticiones.sh 
./borraMount.sh 
nano ./puntoB.sh 
./puntoB.sh 
cd /
mount | grep "mis_directorios" 
cd mis_directorios/
tree
cd
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
lsblk
cd /
mount | grep "mis_directorios" 
cd
cd pruebas/
nano ./puntoB.sh 
./puntoB.sh 
cd /
mount | grep "mis_directorios" 
cd mis_directorios/
tree
cd
cd pruebas/
./borraParticiones.sh 
./borraMount.sh 
nano ./puntoB.sh 
ls
cd ..
ls
cd repogit/
ls
cd ..
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh ~/.bashrc && history -a
cd repogit/
sudo rm -r UTNFRA_SO_1P2C_2024_Martin/
sudo rm -r UTN-FRA_SO_Examenes/
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martin.git
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
~/.bashrc && history -a
sudo ~/.bashrc && history -a
cd UTNFRA_SO_1P2C_2024_Martin/
tree
git clone 
git status
cd ..
sudo rm -r UTNFRA_SO_1P2C_2024_Martin/
ls
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martin.git
sudo ./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
sudo ~/.bashrc && history -a
ls
sudo rm -r UTNFRA_SO_1P2C_2024_Martin/
sudo rm -r UTN-FRA_SO_Examenes/
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martin.git
ls
sudo ./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
sudo ~/.bashrc && history -a
sudo rm -r UTNFRA_SO_1P2C_2024_Martin/
sudo rm -r UTN-FRA_SO_Examenes/
ls
git clone git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martin.git
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
~/.bashrc && history -a
cd UTNFRA_SO_1P2C_2024_Martin/
tree
~/.bashrc && history -a
tree
cd ..
~/.bashrc && history -a
cd UTNFRA_SO_1P2C_2024_Martin/
tree
cd RTA_ARCHIVOS_Examen_20241004/
ls
tree
cd ..
sudo ~/.bashrc && history -a
~/.bashrc && history -a
cd UTNFRA_SO_1P2C_2024_Martin/
tree
git status
nano README.md 
git status
git add .
git commit -m "ADD: script precondiciones para parcial y datos de README" 
git push
tree
cd ..
~/.bashrc && history -a
sudo ~/.bashrc && history -a
cd ..
ls
cd pruebas/
ls
nano puntoB.sh 
cd /
mount | grep "mis_directorios/"
cd 
lsblk
mount | grep "mis_directorios" 
cd /
mount | grep "mis_directorios" 
cd 
lsblk
cd pruebas/
./borraParticiones.sh 
./borraMount.sh 
./puntoB
./puntoB.sh 
cd /
mount | grep "mis_directorios" 
cd 
lsblk
sudo reboot
lsblk
cd /
mount | grep "mis_directorios" 
cd
cd pruebas/
./borraParticiones.sh 
./borraMount.sh 
cd /
mount | grep "mis_directorios" 
sudo umount /dev/sdb1 /mis_directorios/alumno_/parcial_
mount | grep "mis_directorios" 
cd
sudo reboot
cd /
mount | grep "mis_directorios" 
cd 
cd pruebas/
nano ./puntoB.sh 
./puntoB.sh 
cd /
mount | grep "mis_directorios" 
cd
cd pruebas/
nano ./puntoB.sh 
./borraParticiones.sh 
./borraMount.sh 
cd /
mount | grep "mis_directorios" 
sudo umount /dev/sdb1 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb2 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb3 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb4 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb5 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb6 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb7 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb8 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb9 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb10 /mis_directorios/alumno_/parcial_
mount | grep "mis_directorios"
cd mis_directorios/
tree
sudo rm -rf alumno_
tree
cd
cd pruebas/
./puntoB.sh 
cd /
mount | grep "mis_directorios"
cd
cd pruebas/
nano ./puntoB.sh 
./borraMount.sh 
./borraParticiones.sh 
./puntoB.sh 
cd /
mount | grep "mis_directorios"
cd
cd pruebas/
./borraParticiones.sh 
./borraMount.sh 
./borraParticiones.sh 
nano ./puntoB.sh 
./puntoB.sh 
nano ./puntoB.sh 
cd /
mount | grep "mis_directorios"
cd
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
./puntoB.sh 
nano ./puntoB.sh 
lsblk
cd /
mount | grep "mis_directorios"
cd 
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
cd 
mount | grep "mis_directorios"
cd pruebas/
./puntoB.sh 
dmesg
sudo dmesg
cd /
mount | grep "mis_directorios"
cd 
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
cd /
sudo rm -rf mis_directorios/
ls
cd proc/
cd
cd pruebas/
nano ./puntoA.sh 
nano ./puntoB.sh 
./puntoA.sh 
./puntoB.sh 
nano ./puntoB.sh 
./borraMount.sh 
./borraParticiones.sh 
nano ./borraMount.sh 
cd /
mount | grep "mis_directorios"
cd 
cd pruebas/
nano ./borraMount.sh 
./borraMount.sh 
cd /
mount | grep "mis_directorios"
cd
exit
lsblk
cd pruebas/
./puntoA.sh 
cd /
cd mis_directorios/
tree
cd
cd pruebas/
./puntoB.sh 
lsblk
cd ..
sudo reboot
lsblk
cd pruebas/
nano ./puntoB.sh 
nano ./puntoA.sh 
./borraMount.sh 
cd /
mount | grep "mis_directorios"
sudo mount /dev/sdb1 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb1 /mis_directorios/alumno_/parcial_
mount | grep "mis_directorios"
sudo umount /dev/sdb1 /mis_directorios/profesor
mount | grep "mis_directorios"
cd
cd pruebas/
./puntoA.sh 
cd /
ls
sudo rm -rf mis_directorios/
cd
lsblk
cd pruebas/
./borraParticiones.sh 
./
./puntoA.sh 
./puntoB.sh 
nano ./puntoB.sh 
nano ./puntoA
nano ./puntoA.sh 
nano ./puntoB.sh 
nano ./puntoA.sh 
cd ..
cat /etc/fstab
dmesg | grep -i "mount"
cd /
dmesg | grep -i "mount"
sudo dmesg | grep -i "mount"
cd
sudo reboot
lsblk
cd pruebas/
ls
nano ./borraMount.sh 
nano ./borraParticiones.sh.sh 
nano ./borraParticiones.sh
nano ./puntoA.sh 
nano ./puntoB.sh 
cd /
mount | grep "mis_directorios"
cd
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
cd /
mount | grep "mis_directorios"
sudo umount /dev/sdb1 /mis_directorios/alumno_/parcial_
sudo umount /dev/sdb11 /mis_directorios/profesor
mount | grep "mis_directorios"
sudo rm -rf mis_directorios/
cd
cd pruebas/
nano ./puntoB.sh 
./puntoA.sh 
cd /
ls
cd mis_directorios/
tree
cd
sudo reboot
cd pruebas/
nano ./puntoB.sh 
./puntoB.sh 
lsblk
cd /
mount | grep "mis_directorios"
cd
sudo reboot
lsblk
cd pruebas/
nano ./puntoB.sh 
cd /
mount | grep "mis_directorios"
sudo umount /dev/sdb1 /mis_directorios/alumno_1/parcial_1
sudo umount /dev/sdb11 /mis_directorios/profesor
mount | grep "mis_directorios"
cd 
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
cd /
sudo rm -rf mis_directorios/
cd
cd pruebas/
nano ./puntoB.sh 
./puntoA.sh 
./puntoB.sh 
cd
sudo reboot
cd pruebas/
nano ./puntoB.sh 
cd /
mount | grep "mis_directorios"
sudo umount /dev/sdb11 /mis_directorios/profesor
mount | grep "mis_directorios"
sudo nano /etc/fstab
sudo umount /dev/sdb1 /mis_directorios/alumno_/parcial_
mount | grep "mis_directorios"
cd
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
cd /
sudo nano /etc/fstab
cd 
cd pruebas/
nano ./puntoB.sh 
lsblk
cd /
sudo rm -rf /mis_directorios/
cd
cd pruebas/
./puntoA.sh 
./puntoB.sh 
lsblk
cd /
mount | grep "mis_directorios"
sudo nano /etc/fstab
cd
sudo reboot
lsblk
cd pruebas/
cat << EOF > puntoC.sh
#!/bin/bash
EOF

chmod 755 puntoC.sh 
ls
lsblk
nano puntoC.sh 
cd
pwd
grep osboxes /etc/shadow | awk -F ':' '{print $2}'
sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}'
sudo grep osboxes /etc/shadow | awk -F ':' '{print}'
cd pruebas/
nano puntoC.sh 
./puntoC.sh 
cd
ls -l /home
nano puntoC.sh 
nano ./puntoC.sh 
ls
ls -la
cd pruebas/
nano ./puntoC.sh 
./puntoC.sh 
ls -l /home
ls -la /home
nano puntoC.sh 
./puntoC.sh 
ls -la /home
sudo userdel -r p1c2_2024_A1
ls -la /home
sudo groupdel p1c2_2024_gAlumno
./puntoC.sh 
ls -la /home
cd
tail /etc/passwd
cat /etc/group
cd pruebas/
cd
sudo userdel -r p1c2_2024_A1
sudo groupdel p1c2_2024_gAlumno
cat /etc/group
cd pruebas/
cat << EOF > borraUsuario.sh
#!/bin/bash
cat << EOF > borraUsuario.sh
#!/bin/bash
EOF

nano ./borraUsuario.sh 
chmod 755 ./borraUsuario.sh 
./puntoC.sh 
cat /etc/group
./borraUsuario.sh 
cat /etc/group
nano ./puntoC.sh 
./puntoC.sh 
cat /etc/group
./borraUsuario.sh 
cat /etc/group
nano ./puntoC.sh 
sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}'
nano ./puntoC.sh 
cat /etc/group
./puntoC.sh 
./borraUsuario.sh 
cat /etc/group
nano ./puntoC.sh 
./puntoC.sh 
su P1c2_2024_A1
cd
su P1c2_2024_A1
cat /etc/group
su p1c2_2024_A1 
cd pruebas/
nano ./puntoC.sh 
cat /etc/group
./borraUsuario.sh 
./puntoC.sh 
su p1c2_2024_A1 
sudo grep osboxes /etc/shadow | awk -F ':' '{print}'
sudo grep osboxes /etc/shadow | awk -F ':' '{print $2 }'
nano ./puntoC.sh 
./borraUsuario.sh 
./puntoC.sh 
cat /etc/group
./borraUsuario.sh 
sudo kill 3242
./borraUsuario.sh 
cat /etc/group
sudo pkill -u p1c2_2024_A1
cat /etc/group
./borraUsuario.sh 
cat /etc/group
./borraUsuario.sh 
exit
su p1c2_2024_A1 
./borraUsuario.sh 
cat /etc/group
./puntoC.sh 
cat /etc/group
./borraUsuario.sh 
nano ./puntoC.sh 
cat /etc/group
./puntoC.sh 
./borraUsuario.sh 
nano ./puntoC.sh 
./puntoC.sh 
./borraUsuario.sh 
nano ./puntoC.sh 
./borraUsuario.sh 
./puntoC.sh 
nano ./puntoC.sh 
cat /etc/group
./borraUsuario.sh 
nano ./puntoC.sh 
cat /etc/group
./puntoC.sh 
su p1c2_2024_A1 
nano ./puntoC.sh 
./borraUsuario.sh 
./puntoC.sh 
su p1c2_2024_A1 
nano ./puntoC.sh 
./borraUsuario.sh 
./puntoC.sh 
su p1c2_2024_A1 
./borraUsuario.sh 
nano ./puntoC.sh 
./puntoC.sh 
./borraUsuario.sh 
nano ./puntoC.sh 
./borraUsuario.sh 
./puntoC.sh 
su p1c2_2024_A1 
./borraUsuario.sh 
nano ./puntoC.sh 
nano ./borraUsuario.sh 
./borraUsuario.sh 
exit
cd pruebas/
cat /etc/group
./puntoC.sh 
./borraUsuario.sh 
cat /etc/group
nano ./borraUsuario.sh 
./borraUsuario.sh 
nano ./borraUsuario.sh 
nano ./puntoC.sh 
./puntoC.sh 
cat /etc/group
nano ./puntoC.sh 
./puntoC.sh 
./borraUsuario.sh 
nano ./borraUsuario.sh 
cat /etc/group
nano ./borraUsuario.sh 
./borraUsuario.sh 
cat /etc/group
./puntoC.sh 
cat /etc/group
su p1c2_2024_P1 
./borraUsuario.sh 
cat /etc/group
nano ./puntoC.sh 
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
tree
cd RTA_ARCHIVOS_Examen_20241004/
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 20230521/
tree
cd ..
cd UTNFRA_SO_1P2C_2024_Martin/
tree
git status
cd ..
cd pruebas/
cd /
nano /etc/fstab
cd
cd pruebas/
ls
nano borraMount.sh 
./borraMount.sh 
./borraParticiones.sh 
nano borraMount.sh 
nano /etc/fstab
sudo nano /etc/fstab
cd /
sudo rm -rf /mis_directorios/
cd
sudo reboot
chmod 777 /media/sf_shared
lsblk
cd/ 
cd /
mount 
ccd
cd proc/
cd .
cd ..
cd
cd pruebas/
nano puntoA.sh 
ls
nano ./borraMount.sh 
nano ./borraParticiones.sh.sh 
nano ./borraParticiones.sh
nano ./puntoB.sh 
nano /etc/fstab
cd ..
cd pruebas/
./puntoA.sh 
cd /
ls
cd Examenes-UTN/
tree
cd ..
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
tree
cd
cd pruebas/
./puntoB.sh 
lsblk
nano /etc/fstab
lsblk -l
cat /etc/group
ls
nano ./puntoC.sh 
lsblk
./puntoC.sh 
cd
ls -l
su p1c2_2024_A1
cat /etc/group
cd pruebas/
./borraUsuario.sh 
cat /etc/group
nano ./puntoC.sh 
./puntoC.sh 
su p1c2_2024_A1
cat /etc/group
./borraUsuario.sh 
nano ./puntoC.sh 
./puntoC.sh 
./borraUsuario.sh 
cd
ls -l /etc/sudoers.d
cat /etc/sudoers
sudo cat /etc/sudoers
cd pruebas/
nano ./puntoC.sh 
cat /etc/sudoers
sudo cat /etc/sudoers
cat /etc/group
./puntoC.sh 
./borraUsuario.sh 
nano ./puntoC.sh 
./puntoC.sh 
ls -ld /Examenes-UTN/alumno_1
./borraUsuario.sh 
ls -ld /Examenes-UTN/alumno_1
cat /etc/group
nano ./puntoC.sh 
cat /etc/group
./puntoC.sh 
./borraUsuario.sh 
nano ./puntoC.sh 
./puntoC.sh 
ls -ld /Examenes-UTN
ls -ld /Examenes-UTN/
ls -ld /Examenes-UTN/alumno_1
ls -ld /Examenes-UTN/alumno_2
ls -ld /Examenes-UTN/alumno_3
ls -ld /Examenes-UTN/profesores
./borraUsuario.sh 
ls -ld /Examenes-UTN/alumno_2
nano ./puntoC.sh 
./puntoC.sh 
./borraUsuario.sh 
nano ./puntoC.sh 
./puntoC.sh 
ls -ld /Examenes-UTN/alumno_2
ls -ld /Examenes-UTN/alumno_3
./borraUsuario.sh 
nano ./puntoC.sh 
cd /
cd Examenes-UTN/
tree
cd 
cd pruebas/
./borraUsuario.sh 
ls -ld /Examenes-UTN/alumno_2
sudo chown -R osboxes:osboxes /Examenes-UTN/alumno_1
sudo chown -R osboxes:osboxes /Examenes-UTN/alumno_2
sudo chown -R osboxes:osboxes /Examenes-UTN/alumno_3
sudo chown -R osboxes:osboxes /Examenes-UTN/profesores
sudo chmod -R 770 /Examenes-UTN/alumno_1
sudo chmod -R 770 /Examenes-UTN/alumno_2
sudo chmod -R 770 /Examenes-UTN/alumno_3
sudo chmod -R 770 /Examenes-UTN/profesores
cd /
cd Examenes-UTN/
tree
cd ..
tree /Examenes-UTN/
cd
cd pruebas/
cat << EOF > devuelvePermiso.sh
sudo chown -R osboxes:osboxes /Examenes-UTN/alumno_1
sudo chown -R osboxes:osboxes /Examenes-UTN/alumno_2
sudo chown -R osboxes:osboxes /Examenes-UTN/alumno_3
sudo chown -R osboxes:osboxes /Examenes-UTN/profesores
sudo chmod -R 770 /Examenes-UTN/alumno_1
sudo chmod -R 770 /Examenes-UTN/alumno_2
sudo chmod -R 770 /Examenes-UTN/alumno_3
sudo chmod -R 770 /Examenes-UTN/profesores
EOF

chmod 755 devuelvePermiso.sh 
nano ./devuelvePermiso.sh 
./puntoC.sh 
cd /
tree /Examenes-UTN/
cd
cd pruebas/
./devuelvePermiso.sh 
cd /
tree /Examenes-UTN/
cd
cd pruebas/
nano puntoC.sh 
./puntoC.sh 
./borraUsuario.sh 
./devuelvePermiso.sh 
tree /Examenes-UTN/
cat /etc/groups
cat /etc/group
nano ./puntoC.sh 
./puntoC.sh 
cd
su p1c2_2024_A1
cd pruebas/
./borraUsuario.sh 
./devuelvePermiso.sh 
cd /Examenes-UTN/
tree
sudo rm -rf alumno_1/validar.txt 
tree
sudo rm -rf alumno_2/validar.txt 
sudo rm -rf alumno_3/validar.txt 
sudo rm -rf profesores/validar.txt 
cd
cd pruebas/
nano ./devuelvePermiso.sh 
./puntoC.sh 
cd /
cd
tree /Examenes-UTN/
cd pruebas/
./devuelvePermiso.sh 
tree /Examenes-UTN/
nano ./puntoC.sh 
./puntoC.sh 
./borraUsuario.sh 
./devuelvePermiso.sh 
tree /Examenes-UTN/
clear
nano ./puntoC.sh 
./puntoC.sh 
cat /etc/group
ls -ld /Examenes-UTN/alumno_2
./borraUsuario.sh 
./devuelvePermiso.sh 
tree /Examenes-UTN/
cd
cd pruebas/
nano ./puntoC.sh 
tree /Examenes-UTN/
cd
cd pruebas/
cat << EOF > puntoC.sh
#!/bin/bash
EOF

nano ./puntoC.sh 
cd
cd pruebas/
ls
nano ./puntoC.sh 
cat << EOF > puntoD.sh
#!/bin/bash
EOF

chmod 755 ./puntoD.sh 
nano puntoD.sh 
cd /
cd
cd pruebas/
tree /Examenes-UTN/
nano ./puntoD.sh 
./puntoD.sh 
cd
ls
ls -l
pwd
nano ./puntoD.sh 
cd pruebas/
ls
nano ./puntoD.sh 
./puntoD.sh 
cd
ls
nano ./puntoD.sh 
cd pruebas/
nano ./puntoD.sh 
./puntoD.sh 
cd ..
ls
ls /home
tree /Examenes-UTN/
tree /home/Estructura_Asimetrica/
sudo rm -rf /home/Estructura_Asimetrica/
ls /home
tree /home/osboxes/
celar
clear
cd pruebas/
./puntoD.sh 
ls /home/
tree /home/Estructura_Asimetrica/
nano ./puntoD.sh 
ls /home
sudo rm -rf /home/Estructura_Asimetrica/
./puntoD.sh 
cd
ls
ls -ld ~
umask
nano ./puntoD.sh 
cd pruebas/
nano ./puntoD.sh 
./puntoD.sh 
nano ./puntoD.sh 
./puntoD.sh 
ls
cd
ls
cd /
ls
sudo rm -rf Estructura_Asimetrica/
cd
mkdir pr
ls
cd pr
sudo rm -rf pr
cd
ls
sudo rm -rf pr
ls
cd pruebas/
nano ./puntoD.sh 
cd
sudo mkdir -p /Estructura_Asimetrica/{correo/{cartas_{1..10},cartero_{1..5}},clientes/cartas_{1..10}}
ls
cd /
sudo rm -rf Estructura_Asimetrica/
cd
sudo mkdir -p Estructura_Asimetrica/{correo/{cartas_{1..10},cartero_{1..5}},clientes/cartas_{1..10}}
ls
sudo rm -rf Estructura_Asimetrica/
ls
cd pruebas/
nano ./puntoD.sh 
./puntoD.sh 
cd
ls
ls /home/
cd /
ls
cd
cd pruebas/
ls
sudo rm -rf Estructura_Asimetrica/
ls
nano ./puntoD.sh 
./puntoD.sh 
cd
ls
cd pruebas/
ls
cd home/
ls
cd ..
sudo rm -rf home
ls
nano ./puntoD
nano ./puntoD.sh 
./puntoD.sh 
cd
ls
ls /home
sudo rm -rf /home/Estructura_Asimetrica/
cd pruebas/
nano ./puntoD.sh 
./puntoD.sh 
sudo mkdir -p /home/Estructura_Asimetrica/{correo/{cartas_{1..10},cartero_{1..5}},clientes/cartas_{1..10}}
ls /home
sudo rm -rf /home/Estructura_Asimetrica/
./puntoD.sh 
cd
tree /home/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
tree /home/Estructura_Asimetrica/
sudo rm -rf /home/Estructura_Asimetrica/
ls
cd pruebas/
cat << EOF > puntoE.sh
#!/bin/bash
EOF

chmod 755 ./puntoE.sh 
cd
/proc/meminfo
sudo /proc/meminfo
sudo cat /proc/meminfo
sudo cat /proc/meminfo | head
sudo cat /proc/meminfo | head -1
dmidecode -t chassis
sudo dmidecode -t chassis
sudo dmidecode -t chassis | grep "Chassis information" 
sudo dmidecode -t chassis | grep "Chassis Information" 
man grep
sudo dmidecode -t chassis | grep -i "chassis information" 
sudo dmidecode -t chassis | grep -i chassis information 
sudo dmidecode -t chassis | grep -i "chassis information" | grep -i "manufacturer" 
sudo dmidecode -t chassis | grep -i "chassis information manufacturer"
sudo dmidecode -t chassis | grep -i "manufacturer"
sudo dmidecode -t chassis | head
sudo dmidecode -t chassis | head -5
sudo dmidecode -t chassis | head -8
sudo dmidecode -t chassis | head -8 | tail -2
sudo dmidecode -t chassis | head -8 | tail -3
sudo dmidecode -t chassis | head -7 | tail -3
sudo dmidecode -t chassis | head -9 | tail -3
sudo dmidecode -t chassis | head -9 | tail -4
sudo dmidecode -t chassis | head -9 | tail -2
sudo dmidecode -t chassis | head -9 | tail -3
sudo dmidecode -t chassis | head -9 | tail 4
sudo dmidecode -t chassis | head -9 | tail -1
sudo dmidecode -t chassis | head -9 | tail -4
sudo dmidecode -t chassis | head -9 | tail -6
sudo dmidecode -t chassis | head -9 | tail -4
sudo dmidecode -t chassis | head -9 | tail -3
sudo dmidecode -t chassis | head -10 | tail -3
sudo dmidecode -t chassis | head -5 | tail -3
sudo dmidecode -t chassis | head -3 | tail -3
sudo dmidecode -t chassis | head -3 | tail -2
sudo dmidecode -t chassis | head -7 | tail -2
cd pruebas/
ls
nano ./puntoE.sh 
./puntoE.sh 
ls
cat filtro_basico.txt 
cat << EOF > puntoF.sh
#!/bin/bash
EOF

chmod 755 ./puntoF.sh 
ls
curl -s ifconfig.me
sudo apt install curl
curl -s ifconfig.me
exit
cd repogit/
git remote get-url origin
cd UTNFRA_SO_1P2C_2024_Martin/
git remote get-url origin
echo git remote get-url origin > /home/pruebas/filtro_avanzado.txt
cat git remote get-url origin > /home/pruebas/filtro_avanzado.txt
pwd
cd
cd pruebas/
pwd
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cat git remote get-url origin > /home/osboxes/pruebas/filtro_avanzado.txt
echo git remote get-url origin > /home/osboxes/pruebas/filtro_avanzado.txt
cd
cd pruebas/
ls
cat filtro_avanzado.txt 
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
git remote get-url origin > /home/osboxes/pruebas/filtro_avanzado.txt
cd
cd pruebas/
ls
cat filtro_avanzado.txt 
nano ./puntoD.sh 
cd
pwd
cd
cd pruebas/
nano ./puntoD.sh 
./puntoD.sh 
cd
ls
tree Estructura_Asimetrica/
ls /home
cd
cd pruebas/
cd 
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
pwd
cd
cd pruebas/
ls
sudo rm -rf filtro_avanzado.txt 
nano ./puntoF.sh 
./puntoF.sh 
ls
cat filtro_avanzado.txt 
sudo rm -rf filtro_avanzado.txt 
nano ./puntoF.sh 
./puntoF.sh 
ls
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
ls
cat filtro_avanzado.txt 
echo "url" git remote get-url origin
echo "url" cat git remote get-url origin
git remote get-url origin
ls
sudo rm -rf filtro_avanzado.txt 
ls
cd ]
cd
cd pruebas/
nano ./puntoF.sh 
./puntoF.sh 
ls
cd 
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
git remote get-url origin
echo git remote get-url origin
cat git remote get-url origin > f.txt
git remote get-url origin > f.txt
ls
cat f.txt 
echo "url" git remote get-url origin > f.txt
ls
cat f.txt 
sudo rm -rf f.txt 
cd
cd pruebas/
pwd
nano ./puntoF.sh 
./puntoF.sh 
pwd
nano ./puntoF.sh 
./puntoF.sh 
ls
cat filtro_avanzado.txt 
whoami
nano ./puntoF.sh 
./puntoF.sh 
ls
cat filtro_avanzado.txt 
nano ./puntoF.sh 
./puntoF.sh 
cat filtro_avanzado.txt 
nano ./puntoF.sh 
./puntoF.sh 
cat filtro_avanzado.txt 
nano ./puntoF.sh 
echo "usuario: " whoami > filtro_avanzado.txt 
cat filtro_avanzado.txt 
sudo rm -rf filtro_avanzado.txt 
echo "usuario: " whoami > filtro_avanzado.txt 
cat filtro_avanzado.txt 
nano ./puntoF.sh 
ls
sudo rm -rf filtro_avanzado.txt 
./puntoF.sh 
cat filtro_avanzado.txt 
nano ./puntoF.sh 
./puntoF.sh 
cat filtro_avanzado.txt 
nano ./puntoF.sh 
./puntoF.sh 
cat filtro_avanzado.txt 
cd
cd pruebas/
ls
exit
cd pruebas/
ls
nano ./puntoC.sh 
lsblk
cd
exit
lsblk
fdisk /dev/sdc
sudo fdisk /dev/sdc
lsblk
sudo fdisk /dev/sdc
lsblk
sudo /etc/fstab
sudo /dev/fstab
sudo nano /etc/fstab
sudo /etc/fstab
sudo fdisk /dev/sdc
lsblk
sudo mkdir /home/osboxes/discoC/fisica_{1..3},logica_{1..2}
sudo mkdir -p /home/osboxes/discoC/fisica_{1..3},logica_{1..2}
ls
tree discoC
sudo rm -rf discoC/
ls
sudo mkdir -p /home/osboxes/discoC/fisica_{1..3}/logica_{1..2}
tree discoC/
sudo mkdir -p /home/osboxes/discoC/{fisica_{1..3},logica_{1..2}}
tree discoC/
sudo rm -rf discoC/
sudo mkdir -p /home/osboxes/discoC/{fisica_{1..3},logica_{1..2}}
tree discoC/
lsblk
sudo fdisk /dev/sdc
lsblk
sudo mount /dev/sdc1 /home/osboxes/discoC/fisica_1
sudo mount /dev/sdc1 /discoC/fisica_1
lsblk
cd pruebas/
nano ./puntoB.sh 
cd
sudo mount /dev/sdc1 /discoC/fisica_1
tree discoC/
exit
ls -ld discoC/
ls -ld /discoC
lsblk
tree discoC/
sudo mount /dev/sdc1 discoC/fisica_1
sudo mount /dev/sdc1 /discoC/fisica_1
dmesg
sudo cat dmesg
sudo dmesg
clear
sudo rm -rf discoC/
sudo mkdir /home/osboxes/discoC/{fisica_{1..3},logica_{1..2}}
sudo mkdir -p /home/osboxes/discoC/{fisica_{1..3},logica_{1..2}}
tree discoC/
sudo mount /dev/sdc1 /home/osboxes/discoC/fisica_1/
sudo mount /dev/sdc1 /home/osboxes/discoC/fisica_1
mkfs -t ext4 dev/sdc1
mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc1
sudo mount /dev/sdc1 /home/osboxes/discoC/fisica_1
lsblk
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mount /dev/sdc2 /home/osboxes/discoC/fisica_2
sudo mount /dev/sdc3 /home/osboxes/discoC/fisica_3
sudo mount /dev/sdc5 /home/osboxes/discoC/logica_1
sudo mount /dev/sdc6 /home/osboxes/discoC/logica_2
lsblk
dmesg
sudo dmesg
clear
lsblk
sudo umount /dev/sdc6 /home/osboxes/discoC/logica_2
lsblk
sudo umount /dev/sdc5 /home/osboxes/discoC/logica_1
sudo umount /dev/sdc1 /home/osboxes/discoC/fisica_1
sudo umount /dev/sdc2 /home/osboxes/discoC/fisica_2
sudo umount /dev/sdc3 /home/osboxes/discoC/fisica_3
lsblk
fdsidk /dev/sdc
sudo fdisk /dev/sdc
lsblk
sudo reboot
sudo fdisk /dev/sdc
sudo mount /dev/sdc1 /home/osboxes/discoC/fisica_1
sudo mkfs -t ext4 /dev/sdc1
sudo mount /dev/sdc1 /home/osboxes/discoC/fisica_1
lsblk
sudo umount /dev/sdc1 /home/osboxes/discoC/fisica_1
lsblk
sudo fdisk /dev/sdc
lsblk
cd pruebas/
nano ./puntoA
nano ./puntoA.sh 
nano ./puntoB.sh 
nano ./puntoC.sh 
exit
sudo reboot
sudo apt install firefox
sudo apt upgrade
sudo apt update
sudo apt install libpng-dev libxcursor-dev
git clone git@github.com:eworm-de/xcur2png.git
cd xcur2png/
./configure
make
sudo make install
cd
ls
sudo rm -rf xcur2png/
ls
tree Estructura_Asimetrica/
sudo reboot
ls -l
cd /ssh
ls -la
sudo cat /etc/ssh/
sudo cat .ssh/
cd .ssh/
ls
sudo cat id_ed25519.pub 
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
git status
cd repogit/
ls
tree UTNFRA_SO_1P2C_2024_Martin/
nano ./Punto_A.sh
nano ./Punto_A.sh 
chmod 755 Punto_A.sh 
nano ./Punto_A.sh 
cd
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
cd 
cd /
ls
sudo rm -rf Examenes-UTN/
cd
sudo nano /etc/fstab
ls
sudo rm -rf Estructura_Asimetrica/
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
tree
cd RTA_SCRIPT_Examen_20241004/
cat Punto_A.sh 
cd
ls
cd pruebas/
ls
cd
cd repogit/
ls
sudo rm -rf Punto_A.sh 
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
ls
nano Punto_A.sh 
ls -l
chmod 755 Punto_A.sh 
ls -l
nano Punto_B.sh 
chmod 755 Punto_B.sh 
ls
nano Punto_C.sh 
chmod 755 Punto_C.sh 
nano Punto_A.sh 
nano Punto_B.sh 
nano Punto_C.sh 
ls
nano Punto_C.sh 
nano Punto_D.sh 
ls
chmod 755 Punto_D.sh 
ls
nano Punto_E.sh 
ls
chmod 755 Punto_E.sh 
ls
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
ls
cd RTA_SCRIPT_Examen_20241004/
ls
nano Punto_E.sh 
nano Punto_F.sh 
chmod 755 Punto_F.sh 
ls
nano Punto_E.sh 
cd ..
ls
cd RTA_SCRIPT_Examen_20241004/
nano Punto_E.sh 
nano Punto_F.sh 
./Punto_E.sh 
cd ..
ls
cd RTA_ARCHIVOS_Examen_20241004/
ls
pwd
cd
sudo cat /etc/fstab
sudo nano /etc/fstab
sudo cat /etc/fstab
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
ls
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_E.sh 
./Punto_E.sh 
nano ./Punto_E.sh 
./Punto_E.sh 
cd .. 
ls
RTA_ARCHIVOS_Examen_20241004/
cd RTA_ARCHIVOS_Examen_20241004/
ls
cat filtro_basico.txt 
cd ..
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_F.sh 
nano ./Punto_E.sh 
nano ./Punto_F.sh 
./Punto_F.sh 
cd ..
cd RTA_ARCHIVOS_Examen_20241004/
ls
cat filtro_avanzado.txt 
sudo rm -rf filtro_avanzado.txt 
sudo rm -rf filtro_basico.txt 
ls
cd ..
git status
cd RTA_SCRIPT_Examen_20241004/
./Punto_E.sh 
./Punto_F.sh 
cd ..
cd RTA_ARCHIVOS_Examen_20241004/
ls
cd ..
ls
nano README.md 
git status
git add .
git commit "ADD: agrego los scripts con la resolucion del examen"
git commit -m "ADD: agrego los scripts con la resolucion del examen"
git push
cd 
exit
cd repogit/
ls
tree UTNFRA_SO_1P2C_2024_Martin/
exit
history -a
history
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
ls
touch historial_comandos_Martin.txt
ls
cp $HOME/.bash_history historial_comandos_Martin.txt
cat historial_comandos_Martin.txt 
git status
git add .
git commit -m "ADD: agrego archivo con historial de comandos"
git push
nano historial_comandos_Martin.txt 
git status
git add .
git commit -m "EDIT: edicion archivo de comandos"
git push
cd
cd /
ls
cd
lsblk
sudo cat /etc/fstab
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
./Punto_A.sh 
tree /Examenes-UTN/
./Punto_B.sh 
lsblk
tree /Examenes-UTN/
lsblk
fdisk -l
sudo fdisk -l
./Punto_D.sh 
cd /home/osboxes/
cd ..
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
ls /home/osboxes/
tree /home/osboxes/Estructura_Asimetrica/
./Punto_E.sh 
ls /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Martin/RTA_ARCHIVOS_Examen_20241004/
cat /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Martin/RTA_ARCHIVOS_Examen_20241004/filtro_basico.txt 
./Punto_F.sh 
cat /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Martin/RTA_ARCHIVOS_Examen_20241004/filtro_avanzado.txt 
./Punto_C.sh 
tree /Examenes-UTN/
su p1c2_2024_A1
su p1c2_2024_A2
su p1c2_2024_A3
su p1c2_2024_A1
su p1c2_2024_A2
su p1c2_2024_P1
tree /Examenes-UTN/
ls
cd
cd repogit/
ls
cd
cd pruebas/
ls
nano borraMount.sh 
./borraMount.sh 
./borraParticiones.sh 
ls
nano devuelvePermiso.sh 
./devuelvePermiso.sh 
/etc/grups
/etc/grup
cat /etc/grup
cat /etc/group
./borraUsuario.sh 
cat /etc/group
ls
sudo nano /etc/fstab
sudo rm -rf /Examenes-UTN/
ls /
sudo rm -rf /home/osboxes/Estructura_Asimetrica/
ls /home/osboxes/
lsblk
exit
lsblk
cd /
ls
cd
ls
cd re
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
./Punto_A.sh 
./Punto_B.sh 
./Punto_C.sh 
tree /Examenes-UTN/
nano ./Punto_A.sh 
cd
cat .ssh/
cd .ssh/
cd
lsblk
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
./borraUsuario.sh 
nano /etc/fstab
sudo nano /etc/fstab
cd
lsblk
cd /
ls
tree /Examenes-UTN/
sudo rem -rf /Examenes-UTN/
sudo rm -rf /Examenes-UTN/
cd
ls
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
./Punto_D.sh 
ls /home/osboxes/
tree /home/osboxes/Estructura_Asimetrica/
sudo rm -rf /home/osboxes/Estructura_Asimetrica/
cd
ls
cd pruebas/
ls
nano puntoB.sh 
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
./Punto_A.sh 
./Punto_B.sh 
cd
cd /
tree /Examenes-UTN/
cd
cat << EOF > ./scriptPrecondiciones.sh
#!/bin/bash
TIMESTAMP=$(date +%Y%m%d)
REPO_ALUMNO="UTNFRA_SO_1P2C_2024*"

PATH_REPO_ALUMNO=$(find $HOME -iname $REPO_ALUMNO)

if [ -z $PATH_REPO_ALUMNO ]; then

    echo "Por Favor antes de ejecutar este script"
    echo "clone su repositorio dentro de $HOME/repogit/"
    exit 1
fi

mkdir -p ${PATH_REPO_ALUMNO}/{RTA_SCRIPT_Examen_${TIMESTAMP},RTA_ARCHIVOS_Examen_${TIMESTAMP}}
touch ${PATH_REPO_ALUMNO}/RTA_SCRIPT_Examen_${TIMESTAMP}/Punto_{A..F}.sh

# Habilita la opción para agregar nuevos comandos al final del historial de comandos.
shopt -s histappend

# Me aseguro que exista el archivo
touch ~/.bash_history


if [[ "$(lsattr "$HOME/.bash_history" | awk '{print $1}')" != *a* ]]; then
    chmod 600 ~/.bash_history
    sudo chattr +a ~/.bash_history
fi

if ! grep -cq "Configuración del historial de comandos"  ~/.bashrc ; then
    # Agrega configuración al final del archivo .bashrc
    cat << EOF >> ~/.bashrc

###########################################################
#     Configuración del historial de comandos 
#---------------------------------------------------------#
# Establece el tamaño máximo del historial en 10000 comandos.
export HISTSIZE=10000
# No hay límite en el tamaño del archivo de historial.
export HISTFILESIZE=-1
# Actualiza y sincroniza el historial de comandos entre sesiones.
export PROMPT_COMMAND="history -a; history -c; history -r; \$PROMPT_COMMAND"
###########################################################

EOF

fi
# Recarga el archivo .bashrc para aplicar los cambios.
. ~/.bashrc
history -a
echo 
echo "Por favor ejecute: source  ~/.bashrc  && history -a "
echo 
ls
nano scriptPrecondiciones.sh 
mkdir repo
cd repo
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone git@github.com:emmanuelmartindavid/Owner-avatar-UTNFRA_SO_1P2C_2024_Martine.git
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
~/.bashrc && history -a
sudo ~/.bashrc && history -a
source ~/.bashrc && history -a
ls
cd Owner-avatar-UTNFRA_SO_1P2C_2024_Martine/
ls
cd ..
sudo rm -rf Owner-avatar-UTNFRA_SO_1P2C_2024_Martine/
git clone git@github.com:emmanuelmartindavid/Owner-avatar-UTNFRA_SO_1P2C_2024_Martine.git
ls
sudo rm -rf Owner-avatar-UTNFRA_SO_1P2C_2024_Martine/
gi clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martine.git
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martine.git
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
~/.bashrc && history -a
sudo ~/.bashrc && history -a
source ~/.bashrc && history -a
ls
cd UTNFRA_SO_1P2C_2024_Martine/
cd ..
tree UTNFRA_SO_1P2C_2024_Martine/
cd UTNFRA_SO_1P2C_2024_Martine/
ls RTA_ARCHIVOS_Examen_20241006/
cd
cd repo
cd
cd repogit/
source ~/.bashrc && history -a
ls
cd UTNFRA_SO_1P2C_2024_Martin/
tree
git status
sudo rm -rf RTA_ARCHIVOS_Examen_20241006
sudo rm -rf RTA_SCRIPT_Examen_20241006
tree
cat historial_comandos_Martin.txt 
ls
tree
cd RTA_ARCHIVOS_Examen_20241004/
cat filtro_basico.txt 
cat filtro_avanzado.txt 
cd ..
git remote get-url origin 
git status
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_B.sh 
cd
ls
cd pruebas/
ls
lsblk
./borraMount.sh 
./borraParticiones.sh 
cat /etc/group
sudo nano /etc/fstab
nano ./puntoB.sh 
lsblk
nano ./puntoB.sh 
./puntoB.sh 
lsblk
./borraParticiones.sh 
nano ./puntoB.sh 
./puntoB.sh 
./borraParticiones.sh 
nano ./puntoB.sh 
./puntoB.sh 
lsblk
fdisk /dev/sda
sudo fdisk /dev/sda
lsblk
nano ./puntoB.sh 
./puntoB.sh 
nano ./puntoB.sh 
tree /Examenes-UTN/
sudo rm -rf /Examenes-UTN/
lsblk
./puntoB.sh 
cd /
cd
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
cat etc/fstab
cat /etc/fstab
sudo nano /etc/fstab
lsblk
./puntoA.sh 
./puntoB.sh 
./borraMount.sh 
./borraParticiones.sh 
sudo nano /etc/fstab 
nano ./puntoB.sh 
ls /Examenes-UTN/
sudo rm -rf /Examenes-UTN/
lsblk
./puntoB.sh 
ls /
lsblk
nano ./puntoB.sh 
./puntoB.sh 
nano puntoB.sh 
./puntoA.sh 
./puntoB.sh 
lsblk | grep sdb
nano puntoB.sh 
./borraMount.sh 
./borraParticiones.sh 
cat /etc/fstab
nano /etc/fstab
sudo nano /etc/fstab
./puntoB.sh 
./borraMount.sh 
./borraParticiones.sh 
sudo nano /etc/fstab
nano puntoB.sh 
./puntoB.sh 
cat /etc/fstab | grep "sd

cat /etc/fstab | grep "sd"
./borraMount.sh 
./borraParticiones.sh 
sudo nano /etc/fstab 
nano puntoB.sh 
./puntoB.sh 
./borraMount.sh 
./borraParticiones.sh 
sudo nano /etc/fstab 
nano puntoB.sh 
cd 
cd repo
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_B.sh 
lsblk
cat /etc//fstab 
cat /etc/fstab 
sudo rm -rf /Examenes-UTN/
./Punto_B.sh 
nano ./Punto_B.sh 
./Punto_A.sh 
./Punto_B.sh 
cd ..
git status
git add .
git commit -m "EDIT: Agrego funcionalidad para elegir disco y agrego validaciones basicos en Punto_B"
git push
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_B.sh 
pwd
bash /home/osboxes/pruebas/borraMount.sh 
bash /home/osboxes/pruebas/borraParticiones.sh 
sudo nano /etc/fstab 
./Punto_B.sh 
bash /home/osboxes/pruebas/borraMount.sh 
bash /home/osboxes/pruebas/borraParticiones.sh 
sudo nano /etc/fstab 
nano ./Punto_C.sh 
nano ./Punto_B..sh 
ls
tree
nano ./Punto_B.sh 
lsblk
sudo rm -rf /Examenes-UTN/
./Punto_C.sh 
cd .
cd ..
git status
git add .
git commit -m "FEAT: agrego validacion en script Punto_C"
git push
cd
mkdir -p /home/osboxes/{carta{1..5},carta2{1..4/perro{1..2}}}
ls
sudo rm -rf carta1
sudo rm -rf carta2
sudo rm -rf carta3
sudo rm -rf carta4
sudo rm -rf carta5
ls
sudo rm -rf carta2\{1..4/
ls
mkdir -p /home/osboxes/cartas/{carta{1..5},carta2{1..4}/perro{1..2}}}
ls
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{carta{1..5},carta2{1..4}/perro{1..2}}
tree cartas/
mkdir -p /home/osboxes/cartas/{carta{1..5},{carta2{1..4}/perro{1..2}}}
ls
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{carta{1..5},{carta2{1..4}/perro{1..2}}}
tree cartas/
mkdir -p /home/osboxes/cartas/{carta{1..5},{carta_DOS{1..4},perro{1..2}}}
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{carta{1..5},{carta_DOS{1..4},perro{1..2}}}
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{carta{1..5},{cliente/carta_DOS{1..4},perro{1..2}}}
tree cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},{cliente/carta_DOS{1..4},perro{1..2}}}
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},{cliente/carta_DOS{1..4},perro{1..2}}}
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},{cliente/carta_DOS{1..4}/perro{1..2}}}
tree cartas/
sudo rm -rf cartas/
cd pruebas/
cd
ls
sudo rm -rf repo
cd pruebas/
./puntoD.sh 
cd
tree Estructura_Asimetrica/
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
tree Estructura_Asimetrica/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},{cliente/carta_DOS{1..4}/perro{1..2}}}
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},{cliente/carta_DOS{1..4},perro{1..2}}}
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},cliente/{carta_DOS{1..4},perro{1..2}}}
tree cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},cliente/{carta_DOS{1..4},perro{1..2}/gato}}
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},cliente/{carta_DOS{1..4},perro{1..2}/gato}}
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},cliente/{carta_DOS{1..4},perro{1..2},gato}}
tree cartas/
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},cliente/{carta_DOS{1..4},perro{1..2}/{gato}}}
sudo rm -rf cartas/
mkdir -p /home/osboxes/cartas/{correo/carta{1..5},cliente/{carta_DOS{1..4},perro{1..2}/{gato}}}
tree cartas/
sudo rm -rf cartas/
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
git status
tree
history
history -a
ls
cp $HOME/.bash_history historial_comandos_Martin.txt
cat historial_comandos_Martin.txt 
git status
git add .
git commit -m "EDIT: actualizo historial de comandos"
git push
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_C.sh 
cd
cd pruebas/
nano ./borraUsuario.sh 
cd re
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_C.sh 
lsblk
./Punto_A.sh 
./Punto_B.sh 
./Punto_C.sh 
cat etc/group
cat /etc/group
sudo groupdel p1c2_2024_gAlumno
cat /etc/group
sudo groupdel p1c2_2024_gProfesores
nano ./Punto_C.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
./Punto_C.sh 
bash /home/osboxes/pruebas/./borraUsuario.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
bash /home/osboxes/pruebas/./borraUsuario.sh 
./Punto_C.sh 
bash /home/osboxes/pruebas/./borraUsuario.sh 
nano ./Punto_C.sh 
./Punto_C.sh 
bash /home/osboxes/pruebas/./borraUsuario.sh 
tree /Examenes-UTN/
nano ./Punto_C.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
bash /home/osboxes/pruebas/./borraUsuario.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
bash /home/osboxes/pruebas/./borraUsuario.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
bash /home/osboxes/pruebas/./borraUsuario.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
nano Punto_D.sh 
nano ./Punto_C.sh 
cd
cd pruebas/
./borraUsuario.sh 
./borraMount.sh 
./borraParticiones.sh 
cd re
ccd
cd re
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
./Punto_A.sh 
sudo rm -rf /Examenes-UTN/
./Punto_A.sh 
cd
sudo nano /etc/fstab 
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
./Punto_B.sh 
./Punto_C.sh 
nano ./Punto_C.sh 
cat /etc/group
su p1c2_2024_A2
tree /Examenes-UTN/
nano ./Punto_C.sh 
cd
cd pruebas/
./borraUsuario.sh 
./devuelvePermiso.sh 
./borraMount.sh 
./borraParticiones.sh 
sudo nano /etc/fstab 
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
sudo rm -rf /Examenes-UTN/
./Punto_A.sh 
./Punto_B.sh 
./Punto_C.sh 
lsblk
nano ./Punto_C.sh 
./Punto_C.sh 
tree /Examenes-UTN/
cat /Examenes-UTN/profesores/validar.txt 
cat /etc/group
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_C.sh 
cd
cd repogit/
cd 
cd pruebas/
./borraUsuario.sh 
./devuelvePermiso.sh 
./borraMount.sh 
./borraParticiones.sh 
sudo nano /etc/group
sudo nano /etc/fstab 
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
./Punto_A.sh 
./Punto_B.sh 
./Punto_C.sh 
cat /etc/group
su p1c2_2024_A1
su p1c2_2024_A2
su p1c2_2024_A3
cd ..
git status
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_C.sh 
nano ./Punto_D.sh 
nano ./Punto_E.sh 
cd
touch "hola" uno.txt
ls
cat uno.txt 
echo "hola" dos.txt
echo "hola" > dos.txt
ls
cat d
cat dos.txt 
touch "hola" > tres.txt
cat tres.txt 
sudo rm -rf dos.txt 
sudo rm -rf uno.txt 
sudo rm -rf tres.txt 
cd
ls
cat hola 
sudo rm -rf hola
ls
sudo rm -rf scriptPrecondiciones.sh 
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_C.sh 
cd
lsblk
cd pruebas/
./borraMount.sh 
./borraParticiones.sh 
./devuelvePermiso.sh 
./borraUsuario.sh 
sudo rm -rf /Examenes-UTN/
cd 
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
ls
tree
nano ./Punto_C.sh 
nano Punto_B.sh 
nano ./Punto_A.sh 
nano ./Punto_D.sh 
nano ./Punto_E.sh 
nano ./Punto_F.sh 
nano ./Punto_E.sh 
cd ..
git status
history 
git status
git add .
git commit -m "FEAT: modifico script Punto_C, agrego comentarios"
git push 
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
nano ./Punto_B.sh 
cd
lsblk
fdisk /dev/sdb
n
sudo fdisk /dev/sdb
lasblk
lsblk
cat /etc/fstab 
sudo nano /etc/fstab 
lsblk
clear
lsblk
sudo /dev/sdc
sudo fdisk /dev/sdc
lsblk
sudo fdisk /dev/sdc
lsblk
sudo fdisk /dev/sdc
lsblk
sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
lasblk
lsblk
fdisk -la
cat fdisk -la
fdisk -l
sudo fdisk -l
sudo mkdir -p /Carpeta/subdirectorio{1..5}
ls
tree /Carpeta/
sudo mount /dev/sdc1 /Carpeta/subdirectorio1
sudo mount /dev/sdc1 /Carpeta/subdirectorio2
sudo mount /dev/sdc1 /Carpeta/subdirectorio3
sudo umount /dev/sdc1 /Carpeta/subdirectorio3
sudo umount /dev/sdc1 /Carpeta/subdirectorio2
sudo mount /dev/sdc2 /Carpeta/subdirectorio2
sudo mount /dev/sdc3 /Carpeta/subdirectorio3
sudo mount /dev/sdc5 /Carpeta/subdirectorio5
sudo mount /dev/sdc6 /Carpeta/subdirectorio4
tree /Carpeta/
lsblk
sudo echo "/dev/sdc1 /Carpeta/subdirectorio1 ext4 defaults 0 0" | sudo tee -a /etc/fstab 
sudo echo "/dev/sdc2 /Carpeta/subdirectorio2 ext4 defaults 0 0" | sudo tee -a /etc/fstab 
sudo echo "/dev/sdc3 /Carpeta/subdirectorio3 ext4 defaults 0 0" | sudo tee -a /etc/fstab 
sudo echo "/dev/sdc5 /Carpeta/subdirectorio5 ext4 defaults 0 0" | sudo tee -a /etc/fstab 
sudo echo "/dev/sdc6 /Carpeta/subdirectorio4 ext4 defaults 0 0" | sudo tee -a /etc/fstab 
sudo mount -a
cat /etc/fstab 
sudo reboot
lsblk
sudo fdisk -l
cd pruebas/
sudo nano ./borraParticiones.sh 
sudo nano ./borraMount.sh 
sudo nano ./borraParticiones.sh 
./borraParticiones.sh 
lsblk
sudo umount /dev/sdc1
sudo umount /dev/sdc2
sudo umount /dev/sdc3
sudo umount /dev/sdc5
sudo umount /dev/sdc6
./borraParticiones.sh 
lsblk
sudo nano /etc/fstab 
sudo nano ./borraParticiones.sh 
cd
cd pruebas/
cat puntoF.sh 
cd
ls
sudo rm -rf Estructura_Asimetrica/
cd discoC/
ls
tree
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
git status
cd
cd pruebas/
cd
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
cat ./Punto_F.sh 
cd
cd pruebas/
nano ./puntoC.sh 
lsblk
ls /
ls
cd repogit/
ls
tree
cd UTNFRA_SO_1P2C_2024_Martin/
git status
cd
exit
free | grep "Mem" | awk '{print$2}'
free | grep "Mem" | 
celar
clear
passwd
sudo nano /etc/fstab 
cat /etc/passwd
clear
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
tree
lasblk
lsblk
cat /etc/fstab 
cd
mkdir empresa/sector/tarea/empleado
ls
mkdir -p empresa/sector/tarea/empleado
ls
tree empresa/
sudo rm -rf empresa/
cd repogit/
cd UTNFRA_SO_1P2C_2024_Martin/
cd RTA_SCRIPT_Examen_20241004/
cd
mkdir -p particiones/partes{1..3}
tree particiones/
sudo rm -rf particiones/
clear
lsblk
sudo groupadd grupo_1
sudo useradd -m -s /bin/bash -c "user_1" -G grupo_1 "$(grep osboxes etc/shadow | awk -F ':' {print $2}) user_1
sudo groupdelte grupo_1
cd pruebas/
cat ./borraUsuario.sh 
sudo groupdel grupo_1
sudo userdel user_1
cat /etc/group
sudo groupadd grupo_1
sudo useradd -m -s /bin/bash -c "user_1" -G grupo_1 "$(grep osboxes etc/shadow | awk -F ':' '{print $2}') user_1

sudo groupdel grupo_1
sudo userdel user_1
sudo groupadd grupo_1
sudo useradd -m -s /bin/bash -c "user_1" -G grupo_1 "$(grep osboxes /etc/shadow | awk -F ':' '{print $2}') user_1
sudo groupdel grupo_1
sudo userdel user_1
sudo groupadd grupo_1
sudo useradd -m -s /bin/bash -c "usuario_1" -G grupo_1 -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" usuario_1
cd
sudo mkdir -p /matematica/{conjeturas/{incognitas,matematicos},teoremas/{incognitas,soluciones}}
tree /matematica/
sudo rm -rf /matematica/
cat /etc/group
sudo uderdel usuario_1
cat /etc/group
sudo uderdel usuario_1
cd pruebas/
cat ./borraUsuario.sh 
cd
sudo uderdel -r usuario_1
cat ./borraUsuario.sh 
cat /etc/group
sudo userdel -r usuario_1
cat /etc/group
sudo group -r usuario_1
sudo groupdel -r usuario_1
sudo groupdel -r grupo_1
sudo groupdel grupo_1
cat /etc/group
sudo userad p1
sudo useradd p1
sudo -p "osboxes /etc/passwd | (awk -F ':' '${print $2}') p1"
sudo -p "sudo grep osboxes /etc/passwd | (awk -F ':' '${print $2}') p1"
sudo -p $("sudo grep osboxes /etc/passwd | awk -F ':' '${print $2}') p1"
sudo -p "$(sudo grep osboxes /etc/passwd | awk -F ':' '${print $2}') p1"
sudo -p "$(sudo grep osboxes /etc/passwd | awk -F ':' '{print $2}') p1"
sudo userdel -r p1
cat /etc/group
cat /etc/passwd
cd
cd /
ls
cd
ls
clear
ls
sudo mkdir -p /matematica/{{conjetura/uno,dos{1..3}},otro}
tree /matematica/
sudo mkdir -p /matematica/{conjetura/{uno,dos{1..3}},otro}
sudo rm -rf /matematica/
sudo mkdir -p /matematica/{conjetura/{uno,dos{1..3}},otro}
sudo rm -rf /matematica/
sudo mkdir -p /matematica/{conjetura/{uno,dos{1..3}},otro}
tree /matematica/
sudo rm -rf /matematica/
sudo mkdir -p /matematica/{conjetura/{uno,dos{1..3}},otro}
cd /
ls -l
cd /matematica/
ls -l
cd ..
sudo chmod -r 750 /matematica/
sudo chmod -R 750 /matematica/
ls -l
sudo rm -rf /matematica/
sudo mkdir -p /matematica/{conjetura/{uno,dos{1..3}},otro}
ls -l
sudo chmod -R 750 /matematica/
ls -l
cd /matematica/
sudo cd /matematica/
sudo cd /matematica
ls
cd matematica/
sudo cd matematica/
tree -l /matematica/
sudo rm -rf /matematica/
cd
clear
sudo mkdir -p /matematica/{conjetura/{uno,dos{1..3}},otro}
cd /
ls -l
sudo rm -rf /matematica/
cd
sudo groupadd grupo
sudo useradd -m -s /bin/bah -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" usuario
sudo useradd -m -s /bin/bash -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" usuario
sudo userdel -r usuario
cat /etc/grupo
cat /etc/group
claer
clear
sudo useradd -m -s /bin/bash -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" usuario
su usario
su usuario
sudo userdel -r usuario
sudo groupdel grupo
sudo mkdir /disco2
ls /
lsblk
sudo fdisk /dev/sdc
sudo mkfs -t /dev/sdc1
sudo mkfs ext4 -t /dev/sdc1
lsblk
sudo mkfs -t ext4 /dev/sdc1
sudo mount /disco2/
sudo mount /disco2/ /etc/fstab
tree /disco2/
lsblk
sudo mount /dev/sdc1 /etc/fstab
sudo nano /etc/fstab 
lsblk
sudo mount /dev/sdc1 /etc/fstab
sudo mount /dev/sdc1 /disco2/
lsblk
sudo echo "dev/sdc1 /disco2 ext4 defaults 0 0" | sudo tee -a /etc/fstab 
cat /etc/fstab 
sudo nano /etc/fstab 
sudo umount /disco2 
sudo fdisk /dev/sdc
lsblk
sudo fdisk /dev/sdc
sudo mkfs ext4 -t /dev/sdc1
sudo mkfs -t ext4 /dev/sdc1
sudo mount /dev/sdc1 /disco2/
lsblk
sudo echo "/dev/sdc1 /disco2 ext4 defaults 0 0" | sudo tee -a /etc/fstab 
cat /etc/fstab 
sudo nano /etc/fstab 
sudo umount /disco2 
sudo fdisk /dev/sdc
lsblk
ls /
tree /Carpeta/
sudo rm -rf /Carpeta/
sudo rm -rf /disco2/
sudo mkdir -p /carpeta/{una/{part1,part2{1..3}},dos}
tree /carpeta/
sudo rm -rf /carpeta/
clear
lsblk
sudo fdisk /dev/sdc
lsblk
sudo useradd -m -s /bin/bash usario 
cat /etc/passwd
sudo userdel -r usuario
cat /etc/passwd
sudo userdel -r usario
cat /etc/passwd
clear
ls /
sudo mkdir -p /estructura/{matematica/{uno,dos},logica/{unos,dos,tre}}
tre /estructura/
trer /estructura/
tree /estructura/
sudo rm -rf /estructura/
clear
cat /etc/passwd
cat /etc/group
clear
sudo mkdir -p /Materias/{alumnos/{notas,parciales_{1..3}},profesores/{parciales_{1..3}}}
tree /Materias/
sudo rm -rf /Materias/
sudo mkdir -p /Materias/{alumnos/{notas,parciales_{1..3}},profesores/parciales_{1..3}}
tree /Materias/
sudo rm -rf /Materias/
sudo mkdir -p /paquete/{carta/emisor,receptor,cheque/emisor,monto,receptor}
tree /paquete/
sudo rm -rf /paquete/
sudo mkdir -p /paquete/{carta/{emisor,receptor},cheque/{emisor,monto,receptor}}
tree /paquete/
clear
ls /
sudo rm -rf /paquete/
ls /
cd
ls
sudo rm -rf discoC/
lsblk
sudo fdisk /dev/sdc
lsblk
clear
lsblk
sudo mkdir -p /epoca/{antigua/{eventos,persdonas},moderna/{eventos,personas,tecnologia}}
tree /epoca/
ls /
sudo rm -rf /epoca/
clear
lsblk
ls /
ls 
lsblk
clear
lsblk
sudo fdisk /dev/sdc
lsblk
sudo mkdir /disco1
sudo mkfs -t ext4 /dev/sdc1
sudo mount /dev/dc1 /disco1/
sudo mount /dev/dc1 /disco1
ls /
cd disco1
sudo mkdir /disco
lsblk
sudo mount /dev/sdc1 /disco
lsblk
clear
lsblk
sudo umount /disco 
sudo fdisk /dev/sdc
exit
lsblk
sudo usermod -aG vboxusers $USER
lsusb
cd /media/usb
cd /media
ls
cd
sudo mkdir /media/usb
sudo fdisk -l
lsblk -l
dmesg | grep -i usb
sudo dmesg | grep -i usb
ls -l /dev/disk/by-id/
lsblk
sudo mount /dev/sdb /media/usb
lsblk
sudo fdisk /dev/sdb
sblk
lsblk
sudo umount /dev/sdb
lsblk
sudo umount /dev/sdb
sudo fdisk /dev/sdb
sudo umount /dev/sdb
sudo mkfs.vfat /dev/sdb
lsblk
sudo mkfs.vfat /dev/sdb
sudo umount /dev/sdb
lsmod | grep vboxguest
sudo apt upgrade
sudo apt update
sudo apt upgrade
sudo apt update
sudo reboot
cat /etc/apt/sources.list
ls -l /etc/apt/
ls -l /etc/apt/sources.list.d
cat /etc/apt/sources.list.d/ubuntu.sources 
celar
clear
sudo apt update
sudo apt upgrade
clear
sudo apt install mc
clear
exit
mc
clear
sudo apt remove mc
sudo apt purge mc
mc
clear
exit
lsblk
pwd
ls -l
cd /
ls -l
ls media/
cd media/
ls -l
cd
clear
lsblk
lsblk -l
sudo fdisk /dev/sdc
lsblk
fdisk -l
sudo fdisk -l
free
free -h
sudo mkswap /dev/sdc1
free -h
sudo swapon /dev/sdc1 
free -h
claer
clear
sudo fdisk /dev/sdd
lsblk
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdd1
sudo wipefs -a /dev/sdd2
lsblk
sudo wipefs -a /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6 /dev/sdd1 /dev/sdd2
history
clear
lsblk
sudo pvs
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc2
sudo vgs
sudo pvs
sudo vgcreate vg_web /dev/sdd2
sudo pvs
sudo lvcreate -L 1G vg_web -n lv_web1
sudo lvcreate -L 512M vg_web -n lv_web2
sudo lvcreate -L 512M vg_web -n lv_web3
sudo lvs
sudo pvs
sudo fdisk -l
sudo mkfs -t ext4 /dev/mapper/vg_web-lv_web1
sudo mkfs -t ext4 /dev/mapper/vg_web-lv_web2
sudo mkfs -t ext4 /dev/mapper/vg_web-lv_web3
sudo lsblk -f
sudo apt update
sudo apt install apache2 
ls -l /var
ls -l /var/www/
ls -l /var/www/html/
cat /var/www/html/
cat /var/www/html/index.html 
clear
cd /var/www/html/
ls
tree
cd
sudo mkdir -p /var/www/html/web{1..3}
tree /var/www/html/
fdisk -l 
sudo fdisk -l 
sudo mount /dev/mapper/vg_web-lv_web1 /var/www/html/web1
sudo mount /dev/mapper/vg_web-lv_web2 /var/www/html/web2
sudo mount /dev/mapper/vg_web-lv_web3 /var/www/html/web3
tree /var/www/html/
df -h
sudo lvextend -L +1G /dev/mapper/vg_web-lv_web1
df -h
sudo resize2fs /dev/mapper/vg_web-lv_web1
df -h
exit
history
sudo apt update
sudo apt updgrade
sudo apt upgrade
exit
sudo apt update
sudo apt install ansible -y
sudo apt list --installed
sudo apt list --installed | grep git
sudo apt list --installed | grep ansible
ls -l .ssh?
ls -l .ssh/
cd .ssh
ls -l
cat id_ed25519.pub 
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPaz+lk7+Ojp7RAo6szuTDH5UtC7fdFmNuT7asWHWRUo osboxes@osboxes" > authorized_keys
ls
cat authorized_keys 
sudo rm -r authorized_keys 
ls
cat id_ed25519.pub >> authorized_keys
ls
cat authorized_keys 
cd
clear
ipconfig
ip
clear
ifconfig
ip a
sudo apt install net-tools
ifconfig
curl -s ifconfig.me)
curl -s ifconfig.me
cd
claer
clear
whoami
ssh osboxes@190.49.62.212
ssh ubuntu@190.49.62.212
ssh kubuntu@190.49.62.212
ssh osboxes@190.49.62.212
clear
ssh osboxes@190.49.62.212
ssh ubuntu@190.49.62.212
ssh kubuntu@190.49.62.212
clear
sudo apt-get update 
sudo apt-get install openssh-server
sudo ufw allow 22
ssh osboxes@190.49.62.212
cd .ssh/
ssh osboxes@190.49.62.212
ip a
sudo systemctl status
sudo systemctl status sshd
sudo systemctl status ssh
ip a
ifconfig
ssh ubuntu@192.168.1.58
netstat -putona | grep ":22"
ssh ubuntu@192.168.1.58
ssh ubuntu@190.49.62.212
sudo apt-get install openssh-server
sudo ufw allow 22
ssh-rsa ubuntu@190.49.62.212
ssh-rsa ubuntu@192.168.1.58
ifconfig
ssh ubuntu@127.0.0.1
cd
cat ~/.ssh/config
cat .ssh/config
cat .ssh
cd .ssh/
ls
cat known_hosts
sudo tail -f /var/log/auth.log
ssh ubuntu@127.0.0.1
cd
exit
ssh osboxes@127.0.0.1
ls
cd .ss
cd .ssh/
pwd
exit
ssh osboxes@127.0.0.1
pwd
claer
clear
ssh osboxes@190.49.62.212
exit
ssh osboxes@127.0.0.1
w
exit
ssh osboxes@127.0.0.1
cd
w
exit
ssh osboxes@127.0.0.1
ls
cd repogit/
ls
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ls -l
cd UTN-FRA_SO_Ansible/
ls
tree
ls -l
cd ejemplo_0
cd ejemplo_01
ls
ls -l
tree
cat inventory 
cat playbook.yml 
cd ..
cd ejemplo_0
cd ejemplo_01
ansible-playbook -i inventory playbook.yml
cd ..
cd ejemplo_02
clear
ls -l
cat inventory 
cat playbook.yml 
ansible-playbook -i inventory playbook.yml
ls -l /var/
cd ..
cd ejemplo_03
ls -l
ls -la
ls -l
clear
ls -l
cd role_ejemplo1/
ls -l
cd tests/
ls -l
cat test.yml 
cat inventory 
cd ..
ansible-galaxy role init nuevo_rol 
ls -l
cd nuevo_rol/
ls
ls -l
cd ..
ls -l
cd role_ejemplo1/
ansible-playbook -i tests/inventory tests/test.yml
cd
exit
ifcondifg
ifconfig
sudo apt update
sudo apt upgrade
sudo apt update
sudo reboor
sudo reboot
ls -l
cd repogit/
ls -l
cd UTN_FRA_SO_Ansible
cd UTN-FRA_SO_Ansible
ls
cd ejemplo_01
ls -l
cd ..
cd ejemplo_02/
ls -l
cd files/
ls -l
cat index.html 
cd ..
cat inventory 
nano inventory 
ifconfig
nano inventory 
exit
ssh osboxes@192.168.1.58
exit
ansible-playbook -i inventory playbook.yml playbook.yml 
ls -l /var/www
ls -l /var/www/html/
cat /var/www/html/index
cat /var/www/html/index.html
ls -l /var/www/html/
cat /var/www/html/index.html
ls -l /var/www/html/
nano inventory 
ansible-playbook -i inventory playbook.yml playbook.yml 
ls -l /var/www/html/
cat /var/www/html/index.html
ls -l /var/www/html/
cd /var/www/html/web1
ls
ls -l
cs ..
cd 
cd repogit/
cd UTN-FRA_SO_Ansible/
cd ejemplo_02
nano inventory 
ansible-playbook -i inventory playbook.yml playbook.yml 
cat /var/www/html/index.html
ansible-playbook -i inventory playbook.yml playbook.yml 
sudo ansible-playbook -i inventory playbook.yml playbook.yml 
cat /var/www/html/index.html
cd
ls -l
ls -la
cd .ssh/
ls 
cat authorized_keys 
cat id_ed25519.pub 
exit
ssh osboxes@192.168.1.58
cd
cd re
cd repogit/
cd UTN-FRA_SO_Ansible/
cd ejemplo_02
ansible-playbook -i inventory playbook.yml playbook.yml 
clear
cd ..
cd ejemplo_03
ls -l
cd nuevo_rol/
ls -l
cd tasks/
la
ls
cat main.yml 
cd ..
cd ejemplo_04
ls -l
cd roles/
ls
cd role_01
ls -l
cd ..
cd role_02
ls -l
cd tasks/
ls
cat main.yml 
cd ..
cd role_01
cd tasks/
cat main.yml 
cd ..
ls -l
cd ..
ls -l
cat playbook.yml 
ls -l
cd roles/
ls -l
ansible-galaxy role init "nuevo_rol"
ls -l
cd nuevo_rol/
ls -l
cd files/
ls 
ls
ls -l
cd
cd repogit/
cd UTN-FRA_SO_Ansible/
cd ejemplo_04
cd roles/
ls -l
cd nuevo_rol/
ls -l
cd tasks/
nano main.yml 
cd ..
ls -l
nano playbook.yml 
cd roles/
ls -l
cd nuevo_rol/
ls 
cd tasks/
cat main.yml 
cd ..
nano playbook.yml 
ansible-playbook -i inventory playbook.yml 
nano playbook.yml 
ansible-playbook -i inventory playbook.yml 
sudo ansible-playbook -i inventory playbook.yml 
ls -l /home/
cd /home/user115/
ls -l /home/user115/
cd
clear
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo usermod -a -G docker $(whoami)
grep docker /etc/group
whoami 
grep docker /etc/group
id
exit
su osboxes
id
sudo reboot
id
sudo systemctl status docker
cd repogit/
ls
git clone https://github.com/upszot/UTN-FRA_SO_Docker.git
ls -l
cd UTN-FRA_SO_Docker/
ls -l
cd ..
cd UTN-FRA_SO_Docker/
ls -l
cd ejemplo0
ls -l
cat 01_run.sh 
./01_run.sh 
cd
exit
sudo apt upgrade
sudo apt update
exit
ls -l
cd repogit/
ls
cd UTN-FRA_SO_Docker/
ls -l
cat comandos_Redes.md 
clear
systemctl status
systemctl status docker
clear
cd ejemplo0
cat 01_run.sh 
docker run -d -p 80:80 kennethreitz/httpbin
sudo netstat -putona | grep ":80"
docker run -d -p 81:80 kennethreitz/httpbin
sudo netstat -putona | grep ":81"
docker container ls
docker stop 88dd6f099411 
docker container ls
sudo systemctl disable apache2
sudo systemctl stop apache2
sudo netstat -putona | grep ":80"
sudo systemctl disable apache2
sudo systemctl stop apache2
sudo netstat -putona | grep ":80"
ls
cd repogit/
ls
cd UTN-FRA_SO_Examenes/
ls
cd ..
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
sudo rm -r UTN-FRA_SO_Examenes/
ls
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
ls
./UTN-FRA_SO_Examenes/20240G/script_Precondicion.sh
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ..
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
ls
cd UTNFRA_SO_2do_Parcial_Martin/
ls
tree
cd ..
cd UTN-FRA_SO_Examenes/
tree
cd
ls
cd RTA_Examen_20241112/
ls
tree
sudo systemctl status docker
sudo netstat -putona | grep ":80"
sudo netstat -putona | grep ":81"
cd
ls -l
tree RTA_Examen_20241112/
cd pruebas/
ls
./borraUsuario.sh 
cat etc/user
cat borraUsuario.sh 
cat etc
cat home/etc
cat /etc/shadow
sudo cat /etc/shadow
sudo userdel -r user115 
sudo cat /etc/shadow
sudo reboot
lsblk
cd pruebas/
ls
cat borraMount.sh 
cd
cd ~
ls
cd /
ls
cd disco
ls
ls -l
cd ..
cd disco1/
ls
ls -l
cd ..
sudo rm -r disco
sudo rm -r disco1
ls
cat swapfile 
sudo cat swapfile 
cd
history
clear
lsblk
sudo swapoff -v /dev/sdc1
cat /etc/fstab 
sudo swapoff -v /dev/sdc1
sudo swapoff /dev/sdc1
sudo pvs
sudo swapon --show
free -h
cat /proc/swaps
lsblk
cat /etc/fstab
sudo lvremove /dev/vg_web/lv_web1
sudo lvremove /dev/vg_web/lv_web2
sudo lvremove /dev/vg_web/lv_web3
sudo umount /dev/vg_web/lv_web1
sudo umount /dev/vg_web/lv_web2
sudo umount /dev/vg_web/lv_web3
lsblk
sudo lvremove /dev/vg_web/lv_web1
sudo lvremove /dev/vg_web/lv_web2
sudo lvremove /dev/vg_web/lv_web3
sudo vgremove vg_web
sudo vgremove vg_datos
sudo pvremove /dev/sdc2
sudo pvremove /dev/sdc3
sudo pvremove /dev/sdc5
sudo pvremove /dev/sdc6
sudo pvremove /dev/sdd1
sudo pvremove /dev/sdd2
sudo wipefs -a /dev/sdc1
sudo wipefs -a /dev/sdc2
sudo wipefs -a /dev/sdc3
sudo wipefs -a /dev/sdc5
sudo wipefs -a /dev/sdc6
sudo wipefs -a /dev/sdd1
sudo wipefs -a /dev/sdd2
lsblk
cd pruebas/
cat borraParticiones.sh 
./borraParticiones.sh 
lsblk
cat borraParticiones.sh 
nano borraParticiones.sh 
./borraParticiones.sh 
lsblk
nano borraParticiones.sh 
./borraParticiones.sh 
lsblk
nano borraParticiones.sh 
./borraParticiones.sh 
lsblk
nano borraParticiones.sh 
cd
ls
cd /
cd
ls /var/www/html/
exit
lsblk
cd /var/lib/docker/
sudo cd /var/lib/docker/
sudo ls /var/lib/docker/
sudo apt upgrade
sudo apt update
clear
lsblk
ls
cd RTA_Examen_20241112/
ls
cd
cd repogit/
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd
cd /
ls 
cd 
cd repogit/
ls
cd UTN-FRA_SO_Examenes/
cd 20202406
ls
cd 202406
ls
cd bash_script/
ls
cat Lista_Usuarios.txt 
cd ..
ls
cat script_Precondicion.sh 
lsblk
lblsk
lsblk
cd pre
cd pruebas/
nano borraParticiones.sh 
nano borraMount.sh 
lsblk
nano puntoA.sh 
nano puntoB.sh 
nano puntoB2.sh 
ls
nano borraLvm.sh
lsblk
nano borraLvm.sh 
ls
sudo chmod 755 borraLvm.sh 
ls
nano puntoALVM.sh 
sudo fdisk /dev/sdc 
sudo fdisk /dev/sdb
lsblk
nano puntoALVM.sh 
./puntoALVM.sh 
nano borraLvm.sh 
nano borraParticiones.sh 
nano borraLvm.sh 
./borraLvm.sh 
lsblk
nano puntoALVM.sh 
sudo fsdisk /dev/sdb
sudo fdisk /dev/sdb
lsblk
free -h
sudo fdisk /dev/sdb
lsblk
nano puntoA.sh 
cd
cd /
ls
ls -l
cd
cd pruebas/
ls
ls -l
nano puntoALVM.sh 
sudo mkdir /work/
cd /
ls
cd work/
ls
cd
sudo rm -r /work/
ls /
cd pruebas/
nano puntoALVM.sh 
./puntoALVM.sh 
lsblk
nano puntoALVM.sh 
./borraLvm.sh 
lsblk
nano puntoALVM.sh 
./puntoALVM.sh 
free -h
sudo vgs
cd
sudo vgs
./borraLvm.sh 
cd pruebas/
./borraLvm.sh 
nano puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
sudo vgcreate vg_datos /dev/sdb2 /dev/sdc1
./borraLvm.sh 
nano puntoALVM.sh 
./puntoALVM.sh 
sudo vgs
sudo vgcreate vg_datos /dev/sdb2 /dev/sdc1
nano puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
nano puntoALVM.sh 
lsblk
lsblk -f
sudo pvs
df -h
sudo fdisk -l
./borraLvm.sh 
sudo fdisk /dev/sdc 
nano puntoALVM.sh 
sudo fdisk /dev/sdc 
nano puntoALVM.sh 
sudo fdisk /dev/sdc 
nano puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
sudo vgs
sudo vgcreate vg_datos /dev/sdb2 /dev/sdc1
nano puntoALVM.sh 
lsblk
sudo fdisk /dev/sdb
sudo fdisk /dev/sdc
sudo partprobe
lsblk
sudo vgcreate vg_datos /dev/sdb2 /dev/sdc1
./borraLvm.sh 
sudo reboot
sudo apt upgrade
sudo apt update
cd pruebas/
./puntoALVM.sh 
sudo vgs
nano ./puntoALVM.sh 
./borraLvm.sh 
sudo vgs
sudo lvs
nano ./puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
./borraLvm.sh 
sudo reboot
./puntoALVM.sh 
cd pruebas/
./puntoALVM.sh 
sudo vgs
sudo pvs
sudo lv
sudo lvs
sudo fdisk -l
./borraLvm.sh 
nano ./borraLvm.sh 
./borraLvm.sh 
./puntoALVM.sh 
./borraLvm.sh 
lsblk
./borraLvm.sh 
nano ./borraLvm.sh 
./borraLvm.sh 
sudo reboot
lsblk
sudo apt upgrade
sudo apt update
sudo apt upgrade
lsblk
sudo fdisk -l
./puntoALVM.sh 
cd pruebas/
./puntoALVM.sh 
lsblk
sudo reboot
lsblk
sudo vgs
sudo pvs
./borraLvm.sh 
cd pruebas/
./borraLvm.sh 
lsblk
sudo vgs
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
sudo vgs
./borraLvm.sh 
sudo reboot
./puntoALVM.sh 
cd pruebas/
./puntoALVM.sh 
sudo pvs
sudo lvs
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
sudo lvs
sudo pvs
nano ./puntoALVM.sh 
sudo fdisk -l
sudo pvs
./borraLvm.sh 
nano ./puntoALVM.sh 
lsblk
./puntoALVM.sh 
sudo pvdisplay
sudo vgdisplay vg_datos
sudo lvdisplay vg_datos
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
sudo reboot
cd /
ls
cd work/
cd
cd pruebas/
ls
nano ./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
sudo vgs
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
lsblk
nano ./puntoALVM.sh 
sudo fsdisk /dev/sdb
sudo fdisk /dev/sdb
nano ./puntoALVM.sh 
./puntoALVM.sh 
nano ./puntoALVM.sh 
sudo fdisk /dev/sdb
./borraLvm.sh 
sudo fdisk /dev/sdb
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
lsblk
sudo reboot
lsblk
nano ./puntoALVM.sh 
ls
cd pruebas/
nano ./puntoALVM.sh 
./puntoALVM.sh 
nano ./puntoALVM.sh 
./borraLvm.sh 
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdcccccccc
sudo fdisk /dev/sdc
cd
lsblk
cd pruebas/
nano ./puntoALVM.sh 
./puntoALVM.sh 
sudo lvs
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
sudo lvs
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
sudo lvs
df -h
free -h
./borraLvm.sh 
nano ./puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
./borraLvm.sh 
sudo fdisk /dev/sdc
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
slblk
lsblk
nano ./puntoALVM.sh 
cd pruebas/
nano ./puntoALVM.sh 
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
nano ./puntoALVM.sh 
lsblk
cd pruebas/
./puntoALVM.sh 
nano ./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
sudo fdisk /dev/sdc
nano ./puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
sudo fdisk /dev/sdc
lsblk
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
cd pruebas/
lsblk
./puntoALVM.sh 
sudo lvs
sudo vgs
free -h
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
sudo vgs
./borraLvm.sh 
./puntoALVM.sh 
./borraLvm.sh 
sudo reboot
cd pruebas/
./puntoALVM.sh 
sudo fdisk -l
./borraLvm.sh 
nano ./puntoALVM.sh 
./borraLvm.sh 
/usr/local/bin/
cd /usr/local/bin/
ls
ls -l
cd
lsclk
lsblk
free -h
ls
cd repogit/
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
cat Lista_Usuarios.txt 
cd
cd pruebas/
nano ./puntoALVM.sh 
cd pruebas/
nano puntoALVM.sh 
lsblk
nano puntoALVM.sh 
ls
nano borraLvm.sh 
puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
lsblk
nano ./puntoALVM.sh 
./puntoALVM.sh 
sudo fdisk -l
nano ./puntoALVM.sh 
./borraLvm.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
./puntoALVM.sh 
./borraLvm.sh 
nano ./puntoALVM.sh 
lsblk
clear
ls
cd ..
cd repogit/
ls
cd UTN-FRA_SO_Examenes/
cd 202406
ls
cd bash_script/
ls
cat Lista_Usuarios.txt 
cd
cd pruebas/
nano borraUsuario.sh 
ls
cat puntoC.sh 
sudo useradd -m -s /bin/bash -c "emmanuel" emmacdnuel
cd
sudo userdel -r emmacdnuel
sudo useradd -m -s /bin/bash -c "emmanuel" emmanuel
su emmanuel
sudo passwd emmanuel
su emmanuel
sudo userdel -r emmanuel
cd pr
sudo lsof | grep deleted
cd pruebas/
ls
nano puntoLVM.sh 
./puntoLVM.sh 
./borraLVM.sh 
lsblk
nano puntoLVM.sh 
./puntoLVM.sh 
./borraLVM.sh 
nano puntoLVM.sh 
sudo reboot
cd pruebas/
./puntoLVM.sh 
lsblk
./borraLVM.sh 
lsblk
nano ./puntoLVM.sh 
./puntoLVM.sh 
./borraLVM.sh 
./puntoLVM.sh 
sudo reboot
cd pruebas/
ls
cat borraUsuario.sh 
cd
cd /usr/local/bin/
ls
cd
cd pruebas/
nano punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
/etc/shadow
sudo/etc/shadow
sudo /etc/shadow
cd /etc/
ls
cd
cd pruebas/
cat /etc/grou[
cat /etc/group
cat /etc/passwd
cat /etc/group
./borraUsuario.sh 
cat /etc/group
clear
./borraUsuario.sh 
./punto2.sh 
./borraUsuario.sh 
./punto2.sh 
getent passwd
cat /etc/group
getent group 2P_Gdesa
getent group 2P_GTest
cd pruebas/
./borraUsuario.sh 
nano ./punto2.sh 
./punto2.sh 
cat /etc/group
gatent 2P_GDesa
getent 2P_GDesa
getent group 2P_GDesa
nano ./punto2.sh 
./borraUsuario.sh 
./punto2.sh 
nano ./punto2.sh 
sudo reboot
cd
sudo useradd -m -s emmanuel
sudo useradd -m -s /bin/bash emmanuel
sudo userdel -r emmanuel
cd pruebas/
nano punto2.sh 
./borraUsuario.sh 
./punto2.sh 
./borraUsuario.sh 
nano punto2.sh 
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
nano punto2.sh 
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
nano punto2.sh 
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
nano punto2.sh 
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
cat /etc/group
nano punto2.sh 
./punto2.sh 
getent passwd 2P_202406_Prog1
getent passwd 2P_202406_Prog2
getent passwd 2P_202406_Test1
getent passwd 2P_202406_Supervisor
cat /etc/group
getent passwd 2P_202406_Supervisor
./borraUsuario.sh 
nano punto2.sh 
./punto2.sh 
./borraUsuario.sh 
nano punto2.sh 
./punto2.sh 
su 2P_202406_Prog1
./borraUsuario.sh 
nano punto2.sh \
nano punto2.sh
./borraUsuario.sh 
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
./punto2.sh 
./borraUsuario.sh 
nano punto2.sh
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
nano punto2.sh
cat /etc/group
./punto2.sh 
cat /etc/group
su 2P_202406_Prog2
getent group 2p_GDesa
getent group 2P_GDesa
getent passwd | grep 2P_GDesa
cat /etc/group
getent passwd | grep 2P_GDesa
getent passwd | grep 2P_GTest
sudo apt-get install members
members 2P_GDesa
members 2P_GTest
members 2P_GSupervisores
members 2PSupervisores
su 2P_202406_Supervisor 
ls /work/
./borraUsuario.sh 
ls /work/
d
cd
clear
sudo apt upgrade
sudo apt update
clear
cd pruebas/
ls
lsblk
./borraLVM.sh 
lsblk
clear
ls
./puntoLVM.sh 
./borraLVM.sh 
sudo reboot
./puntoLVM.sh 
./punto2.sh 
ls /work/
su 2P_202406_Prog1 
free -h
nano ./puntoLVM.sh 
./puntoLVM.sh 
free -h
sudo reboot
free -h
nano ./puntoLVM.sh 
./borraLVM.sh 
./puntoLVM.sh 
./borraLVM.sh 
sudo reboot
lsblk
./puntoLVM.sh 
free -h
nano ./puntoLVM.sh 
./borraLVM.sh 
./puntoLVM.sh 
./borraUsuario.sh 
./borraLVM.sh 
nano ./borraLVM.sh 
./borraLVM.sh 
./puntoLVM.sh 
./borraLVM.sh 
sudo reboot
./puntoLVM.sh 
free -h
./borraLVM.sh 
./puntoLVM.sh 
./borraLVM.sh 
sudo reboot
nano ./borraLVM.sh 
nano ./puntoLVM.sh 
nano ./borraLVM.sh 
grep docker /etc/group
id
nano punto2.sh 
sudo systemctl status docker
nano punto2.sh 
cd 
cd repogit/
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
cat index.html 
nano index.html 
cat index.html 
touch web1-Martin
ls
nano web1-Martin 
touch run.sh
nano run.sh 
sudo chmod 755 run.sh 
ls
docker build -t EmmanuelDavidMartin/web1-Martin:1.0 .
ls
docker build -t EmmanuelDavidMartin/web1-martin:1.0 .
nano run.sh 
nano web1-Martin 
nano web1-martin 
docker build -t EmmanuelDavidMartin/web1-martin .
docker build -t emmanueldavidmartin/web1-martin .
docker build -t emmanueldavidmartin/web1-martin -f web1-martin .
docker rmi emmanueldavidmartin/web1-martin:1.0 -f web1-martin
docker rmi emmanueldavidmartin/web1-martin:1.0 -f web1-martin .
docker rmi emmanueldavidmartin/web1-martin:1.0 .
docker build -t emmanuelmartindavid/web1-martin -f web1-martin .
ls
cat web1-martin 
sudo rm -r web1-martin 
ls
touch web1-martin
nano web1-martin 
docker build -t emmanuelmartindavid/web1-martin -f web1-martin .
docker login
docker login emmanuelmartindavid
docker login 
docker push emmanueldavidmartin/web1-martin:1.0
docker push emmanueldavidmartin/web1-martin:1.0 .
docker push emmanuelmartindavid/web1-martin:1.0 
docker push emmanuelmartindavid/web1-martin
./run.sh 
nano ./run.sh 
./run.sh 
nano ./run.sh 
./run.sh 
nano ./run.sh 
docker ps
ls
nano web1-martin 
nano index.html 
docker build -t emmanueldavidmartin/web1-martin .
docker build -t emmanueldavidmartin/web1-martin 
docker build -t emmanueldavidmartin/web1-martin -f web1-martin .
docker login
docker push emmanueldavidmartin/web1-martin
docker push emmanuelmartindavid/web1-martin
./run.sh 
docker stop web1-martin
docker rm web1-martin
./run.sh
ls
nano ./run.sh
docker stop 80:80
docker stop web1-martin
docker ps
docker stop 439166aac2a8 
docker rm 439166aac2a8 
./run.sh
docker ps
docker stop 439166aac2a8 
docker rm 439166aac2a8 
docker stop 66c44e6ee11c
docker rm 66c44e6ee11c
docker ps
ls
sudo rm -rf web1-martin 
touch web1-martin
nano web1-martin 
docker build -t emmanueldavidmartin/web1-martin -f web1-martin .
docker login
docker push emmanuelmartindavid/web1-martin
./run.sh 
nano index.html 
nano ./run.sh 
docker pull emmanuelmartindavid/web1-martin:latest
docker ps
docker stop e15778e7002b
docker rm e15778e7002b
./run.sh 
nano index.html 
docker ps
docker stop 08461f9932e5
docker rm 08461f9932e5
sudo build -t emmanuelmartindavid/web1-martin -f web1-martin .
docker build -t emmanuelmartindavid/web1-martin -f web1-martin .
docker push emmanuelmartindavid/web1-martin
./run.sh 
nano ./run.sh 
nano ./run.shcd
cd
cd pruebas/
nano punto2.sh 
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
cd 202406
cd bash_script/
cat Lista_Usuarios.txt 
cd
cd repogit/
cd
cd pruebas/
nano punto2.sh 
clear
cd
cd re
cd repogit/
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
ls
cat playbook.yml 
cd roles/
ls
cd 2do_parcial/
ls
cd
exit\
exit
cd pruebas/
ls
nano punto2.sh 
./punto2.sh 
nano punto2.sh 
./punto2.sh 
nano punto2.sh 
./borraUsuario.sh 
./punto2.sh 
cat /etc/group
nano ./borraUsuario.sh 
sudo groupdel [1]
cat /etc/group
nano ./punto2.sh 
./punto2.sh 
cat /etc/group
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
cat /etc/group
sudo groupdel 2P_202406_Prog1[1] 
cat /etc/group
sudo groupdel 2P_202406_Prog1[2] 
sudo groupdel 2P_202406_Test1[1] 
sudo groupdel 2P_202406_Supervisor[1] 
cat /etc/group
sudo groupdel 2P_202406_Prog2[1] 
cat /etc/group
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
./punto2.sh 
nano ./punto2.sh 
cat /etc/group
./borraUsuario.sh 
cat /etc/group
./punto2.sh 
cat /etc/group
./borraUsuario.sh 
exity
exit
/
cd /
ls
cd root/
sudo cd root/
cd
nano /etc/sudoers
sudo nano /etc/sudoers
sudo useradd -m -s /bin/bash emmanuel
sudo nano /etc/sudoers
passwd emmanuel
sudo passwd emmanuel
su emmanuel 
ls -l
cd /
ls -l
cd etc/
ls
ls -l
cd ..
ls -l
cd
su emmanuel
sudo nano /etc/sudoers
su emmanuel
cd repogit/
cd UTNFRA_SO_2do_Parcial_Martin/
git status
cd 
cd pruebas/
history 
cd
su emmanuel 
sudo nano /etc/sudoers
sudo visudo
su emmanuel 
ls
cd pr
cd pruebas/
ls
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
ls -l
cd roles/
ls -l
cd 2do_parcial/
ls -l
cat README.md 
ls -l
cd tasks/
ls
cat main.yml 
cd ..
ls
cd ..
ls
cd ..
ls
cd
ls -la
cd .ssh/
ls
cd
cd repogit/
cd UTN-FRA_SO_
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible/
cd roles/
ls 
cd 2do_parcial/
ls 
ls -la
cd defaults/
ls
cd ..
cd handlers/
ls
cat main.yml 
cd ..
cd meta/
ls
cat main.yml 
cd ..
ls 
cd tasks/
ls -l
ls -la
cd ..
cd tests/
ls
cat inventory 
cat test.yml 
cd ..
cd vars/
ls
cat main.yml 
cd ..
ls
ifconfig
docker pv
docker ps
ls
cd 2do_parcial/
ls
cd tasks/
ls
cd ..
cd handlers/
ls
ls -la
cd .
ls
ls =la
ls -la
cd ..
ls
cd ..
ls
cat playbook.yml 
cd inventory/
ls
cat host
cat hosts
exit
sudo apt upgrade
sudo apt update
cd pruebas/
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
cd 202406
ls
cd ansible/
ls
ls -l
cd roles
ls
cd ..
cd inventory/
ls -l
cd ..
ls -l
cd logs/
ls
cat ansible_output.log 
cd ..
ls -l
cd inventory/
ls -l
cd
cd pruebas/
nano punto2.sh
./punto2.sh 
./borraUsuario.sh 
cat /etc/group
clear
nano punto2.sh
./punto2.sh osboxes /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /etc/group
clear
./borraUsuario.sh 
cd
cd repogit/
cd UTN-FRA_SO_
cd UTN-FRA_SO_Examenes/
cd  202406
cd ansible/
cd
cd /repogit/UTN-FRA_SO_Examenes/202406/ansible
cd /repogit/UTN-FRA_SO_Examenes/202406
cd repogit/UTN-FRA_SO_Examenes/202406
cd 
cd repogit/UTN-FRA_SO_Examenes/202406/ansible
ls
cd roles
ls -l
cd 2do_parcial/
ls
cd 
cd pr
cd pruebas/
nano punto2.sh
cd
repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
cd repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
ls
cat README.md 
history -a
history 
cd
cd pruebas/
ls -l
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
nano run.sh 
cat web1-martin 
cat index.html 
cd
clear
pwd
clear
cd pruebas/
cd
cd repogit/
cd
cd repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
ls
lsb_release -a
lsb_release -a | grep tail -3
cat lsb_release -a | grep tail -3
nproc
lscpu
nproc
cat lsb_release -a | grep tail -3
lsb_release -a | grep tail -3
lsb_release -a 
lsb_release -a | grep Distributor
lsb_release -a | grep Distri
lsb_release -d
lsb_release -d | D
lsb_release -d | grep -f d
lsb_release -d | grep -l d
lsb_release -d | grep -l D
lsb_release -d | grep  D
lsb_release -a | grep D
ifconfig.me
curl -s ifconfig.me
ls
cd tasks/
ls
cat main.yml 
cd ..
ls
touch scriptAnsible.sh
ls
cd
cd pruebas/
ls
nano puntoLVM.sh 
cd
cd repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
ls
nano scriptAnsible.sh 
cd ..
ls
cd ..
cd docker/
nano run.sh 
cd ..
cd ansible/
cd roles/
cd 2do_parcial/
ls
nano scriptAnsible.sh 
ls
cd tasks/
ls
cat main.yml 
cd ..
ls
cd s
nano scriptAnsible.sh 
nano borra.sh
nano scriptAnsible.sh 
ls
cd ..
ls
cat playbook.yml 
cd roles/
cd 2do_parcial/
nano scriptAnsible.sh 
cd
cd pruebas/
./puntoLVM.sh 
./punto2.sh 
nano ./punto2.sh 
cat /etc/group
clear
nano punto2.sh
./punto2.sh osboxes /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cd
su 2P_202406_Supervisor 
cd repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks
ls
cd ..
ls
cd
cd repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/
sudo chmod 755 scriptAnsible.sh borra.sh 
ls
cd
./repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/scriptAnsible.sh 
cd repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/ 
ls
cd templates
ls
cd ..
./borra.sh 
ls
nano borra.sh 
./borra.sh 
ls
nano borra.sh 
./borra.sh 
ls
nano scriptAnsible.sh 
./scriptAnsible.sh 
nano scriptAnsible.sh 
./borra.sh 
ls
nano scriptAnsible.sh 
./scriptAnsible.sh 
ls
ls /tmp/
./borra.sh 
cd ..
ls
cd roles/
ls
cd 2do_parcial/
nano scriptAnsible.sh 
./scriptAnsible.sh 
ls /tmp/
ls
cd templates
ls
cat datos_alumno.txt.j2 
cd ..
./borra.sh 
nano scriptAnsible.sh 
ls
cd ..
ls
cd inventory/
ls
cat host
cat hosts
cd ..
ls
cat playbook.yml 
nano playbook.yml 
ls
cd roles/
ls
cd 2do_parcial/
ls
./scriptAnsible.sh 
cd 
cd pruebas/
nano puntoLVM.sh 
cd 
cd repogit/
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible/
ls
su 2P_202406_Supervisor 
cd roles/
cd 2do_parcial/
./borra.sh 
nano ./scriptAnsible.sh 
./scriptAnsible.sh 
lsblk
ls
cat borra.sh 
su 2P_202406_Supervisor 
./borra.sh 
ls
ls /tmp/
ls /tmp/2do_parcial/
ls /tmp/2do_parcial/alumno/
cat /tmp/2do_parcial/alumno/datos_alumno.txt 
nano borra.sh 
./borra.sh 
ls /tmp/
nano borra.sh 
sudo fdisk -l
./borra.sh 
ls /tmp/
cd ..
ls
nano playbook.yml 
cd roles/
ls
cd 2
cd 2do_parcial/
ls
./scriptAnsible.sh 
./borra.sh 
cd ..
cat playbook.yml 
nano playbook.yml 
cd roles/
cd 2do_parcial/
./scriptAnsible.sh 
./borra.sh 
cd 
cd pr
cd pruebas/
nano ./puntoLVM.sh 
nano borraLVM.sh 
nano ./puntoLVM.sh 
free -h
ls
lsblk
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
cd 202406
ls
cd ansible/
ls
cd roles/
ls
cd 2do_parcial/
ls
./borra.sh 
cd
cd pruebas/
./borraUsuario.sh 
./borraLVM.sh 
lsblk
sudo reboot
cd pruebas/
nano punto2.sh
cd
cd /usr/local/bin
ls
ls -l
cd
cd pruebas/
nano ./punto2.sh
nano ./borraUsuario.sh 
nano ./punto2.sh
cd
cd /usr/local/lib/
touch martinAltaUser-Group.sh
sudo touch martinAltaUser-Group.sh
ls
nano martinAltaUser-Group.sh 
sudo nano martinAltaUser-Group.sh 
suco chmod 755 martinAltaUser-Group.sh 
sudo chmod 755 martinAltaUser-Group.sh 
./martinAltaUser-Group.sh 
sudo ./martinAltaUser-Group.sh osboxes /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
cd pruebas/
./borraUsuario.sh 
./punto2.sh 
sudo ./punto2.sh osboxes /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
./borraUsuario.sh 
nano ./punto2.sh
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
ls
cd 202406
cd docker/
ls
cat web1-martin 
cat run.sh \
cat run.sh 
cd
cd pruebas/
cat puntoLVM.sh 
cd
ls
cd RTA_Examen_20241112/
ls
nano Punto_A.sh 
sudo chmod 755 Punto_A.sh 
ls
cat Punto_A.sh 
cd
cd pruebas/
ls
cat punto2.sh
cd
cd RTA_Examen_20241112/
nano Punto_B.sh 
sudo chmod 755 Punto_B.sh 
cd 
cd pruebas/
ls
cd 
cd RTA_Examen_20241112/
ls
nano Punto_C.sh 
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
cd
cd repogit/
cd UTN-FRA_SO_Examenes/
cd 202406
cd docker/
ls
cd ..
cd ansible/
ls
cd roles/
ls
cd 2do_parcial/
ls
cat scriptAnsible.sh 
cd
cd RTA_Examen_20241112/
ls
nano Punto_D.sh 
sudo chmod 755 Punto_D.sh 
ls
cat Punto_D.sh 
cd
cd repogit/UTN-FRA_SO_Examenes/202406/ansible/
ls
cd roles/
ls
cd 2do_parcial/
ls
sudo rm -rf scriptAnsible.sh 
ls
cat
cat borra.sh 
cd
cd RTA_Examen_20241112/
ls
touch borraD.sh
nano borraD.sh 
sudo chmod 755 borraD.sh 
ls
./Punto_D.sh 
./borraD.sh 
cat /etc/group
sudo visudo
ls
touch borraA.sh
touch borraB.sh
sudo chmod 755 borraA.sh 
sudo chmod 755 borraB.sh 
cd 
cd pruebas/
cat borraLVM.sh 
cd
cd RTA_Examen_20241112/
nano borraA.sh 
cd
cd pruebas/
cat borraUsuario.sh 
cd
cd RTA_Examen_20241112/
nano borraB.sh 
ls
./Punto_A.sh 
ls
./Punto_B.sh 
./Punto_B.sh osboxes /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
./Punto_D.sh 
cat /etc/group
su 2P_202406_Supervisor 
ls
./borraD.sh 
su 2P_202406_Supervisor 
./borraB.sh 
./borraA.sh 
ls
lsblk
sudo reboo
sudo reboot
ls /tmp/
clear
cd repogit/
ls
cd UTNFRA_SO_2do_Parcial_Martin/
ls
git status
nano README.md 
git status
git add README.md 
git commit -m "docs: actualizo datos personales"
git status
ls
cp -r /home/osboxes/RTA_Examen_20241112 .
ls
cd RTA_Examen_20241112/
ls
sudo rm -rf borraA.sh borraB.sh borraD.sh 
ls
cd ..
git status
git add RTA_Examen_20241112/Punto_A.sh 
git status
git commit -m "feat: agrego desarrollo script punto A de LVM"
git add RTA_Examen_20241112/Punto_B.sh 
git commit -m "feat: agrego desarrollo script punto B Bash Scripting gestion de usuarios"
git satus
git status
git add RTA_Examen_20241112/Punto_C.sh 
git commit -m "feat: agrego comandos usados para desarrollo punto C Docker"
git add RTA_Examen_20241112/Punto_D.sh 
git commit -m "feat: agrego desarrollo script punto D Ansible"
git status
cp -r /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406 .
ls
cd 202406/
ls
cd ansible/
ls
cd roles/
ls
cd 2do_parcial/
ls
cd tasks/
ls
cat main.yml 
nano main.yml 
ls
cd ..
ls
sudo rm -rf borra.sh 
ls
cd defaults/
ls
cat main.yml 
cd ..
ls
cd handlers/
ls
cat main.yml 
cd ..
ls
cd meta/
ls
cat main.yml 
cd ..
ls
cd tests/
ls
cat inventory 
cat test.yml 
cd ..
ls
cd vars/
ls
cat main.yml 
cd ..
ls
git status
git add 202406/
git commit -m "feat: agrego carpeta 202406 con desarrollo de Docker y Ansible"
git satus
git status
history -a
history
$HOME/.bash_history
sudo $HOME/.bash_history
sudo cat $HOME/.bash_history
ls
tree
cd 202406/
cd ansible/
ls
ls -la
cd ..
ls
cd _checks/
ls
cat check_
cat check_a
cat check_A.sh 
./check_A.sh 
cat check_B.sh 
./check_B.sh 
cat check_C.sh 
./check_C.sh 
cat check_D.sh 
./check_D.sh 
cat check_D.sh 
nano check_D.sh 
./check_D.sh 
d ..
cd ..
cd _checks/
nano check_D.sh 
./check_D.sh 
nano check_D.sh 
./check_D.sh 
cd ..
ls
cd _checks/
nano check_D.sh 
cd ..
cd ansible/
cd ..
cd _checks/
nano check_D.sh 
./check_D.sh 
nano check_D.sh 
./check_D.sh 
cd ..
git status
touch $HOME/.bash_history
ls
ls -l
ls -la $HOME | grep .bash_history
ls
cd
ls
ls -la
ls -la $HOME | grep .bash_history
clear
cd repogit/
ls
cd UTNFRA_SO_2do_Parcial_Martin/
ls
cp $HOME/.bash_history 
ls
sudo ls
cd
ls
docker ps
sudo docker ps
docker status
sudo systemctl status docker
ls -l
ls
pwd
exit
ls
exit
sudo ls
cd
pwd
ls
cd repogit/
ls
sudo cd UTN-FRA_SO_2do_Parcial_Martin
cd UTN-FRA_SO_2do_Parcial_Martin
cd UTNFRA_SO_2do_Parcial_Martin
ls
git status
cd
cd repogit/
sudo rm -rf UTNFRA_SO_2do_Parcial_Martin/
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
sudo git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
ls
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
exit
history
cd
exit
cd
cd repogit/
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
exit
cd
ls
cd repogit/
ls
cd UTNFRA_SO_1P2C_2024_Martin/
ls
cd
pwd
ls
cd pruebas/
ls
cd
cd repogit/
ls
cd UTNFRA_SO_1P2C_2024_Martin/
ls
git status
cd
exit
cd
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_1P2C_2024_Martine.git
git config
exit
ssh -T git@github.com
sudo ssh -T git@github.com
exit
ssh-keygen -t ed25519
ls -l
sudo ls -l
cd /
ls -l
exit
cd
ls -la
cd .ssh/
ls
exit
cd
cd .ssh/
ls
sudo rm id_ed25519
sudo rm id_ed25519.pub
sudo rm known_hosts
ls
ls -la
exit
cd
cd .ssh/
ls
ls -la
cd
ls -l
ls -la
exit
cd
cd .ssh/
ls
exit
cd
cd .ssh/
ls
cd
ssh -T git@github.com
exit
cd
ls
cd repogit/
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
ssh -T git@github.com
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
exit
cd
cd repogit/
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
exit
cd
cd repogit/
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
ls
chmod 600 /home/emmanuel/.ssh/id_ed25519
git clone git@github.com:emmanuelmartindavid/UTNFRA_SO_2do_Parcial_Martin.git
ls
cd UTNFRA_SO_2do_Parcial_Martin/
ls
cd RTA_Examen_20241112/
ls
cd
exit
cd
ls
cd RTA_Examen_20241112/
ls
cat borraA.sh
ls
cd
cd repogit/
cd UTNFRA_SO_2do_Parcial_Martin/
cp /home/emmanuel/RTA_Examen_20241112/borraA.sh /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/RTA_Examen_20241112/
ls
cd RTA_Examen_20241112/
ls
cp /home/emmanuel/RTA_Examen_20241112/borraB.sh /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/RTA_Examen_20241112/
cp /home/emmanuel/RTA_Examen_20241112/borraD.sh /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/RTA_Examen_20241112/
ls
nano Punto_B.sh
nano borraB.sh
nano borraA.sh
nano Punto_D.sh
./Punto_A.sh
./Punto_B.sh
ls
nano Punto_B.sh
su 2P_202406_Supervisor
./Punto_D.sh
ls /tmp/
ls 2do_parcial
cd /tmp/2do_parcial/
ls
cd alumno/
ls
cat datos_alumno.txt
cd ..
cd alumno/
cd ..
cd equipo/
cat datos_equipo.txt
cd
su 2P_202406_Supervisor
cd repogit/
cd UTNFRA_SO_2do_Parcial_Martin/
ls
cd 202406/
cd ansible/
cd roles/
cd 2do_parcial/
ls
cd tasks/
ls
cat main.yml
cd ..
ls
cd templates/
ls
cat datos_
cat datos_alumno.txt.j2
cat datos_equipo.txt.j2
cd ..
cd .
cd ..
git status
git add .
git commit -m "fix: arreglo de cambio de usuario solicitado en el parcial"
git config --global user.email "emmanuel.david.martin77@gmail.com"
git config --global user.name "emmanuelmartindavid"
git commit -m "fix: arreglo de cambio de usuario solicitado en el parcial"
git status
