#!/bin/bash
#PARAMETROS QUE RECIBE AL USUARIO DEL QUE SE COPIARA LA CONTRASENIA Y RUTA DE ARCHIVO CON USUARIOS.
ORIGINAL_USER="$1"
PATH_USERS_FILE="$2"

#VERIFICA LAS LINEAS QUE COMIENZAN CON # PARA SALTEARLAS Y CREA LOS USUARIOS UTILIZANDO IFS PARA IDENTIFICAR EL SEPARADOR DE CAMPOS Y EL READ -r PARA DIVIDIR CADA CAMPO CORRESPONDIENTE.
while IFS=$',' read -r user group path_home; do
   comment=$user
   if [[ $comment =~ ^# ]]; then
     continue
   fi
   if ! getent group "$group"; then
         sudo groupadd "$group"
   fi
   if ! id "$user"; then
         sudo useradd -m -d "$path_home" -s /bin/bash -c "$user" -g "$group" -p "$(sudo grep $ORIGINAL_USER /etc/shadow | awk -F ':' '{print $2}')" "$user"
   fi
done < "$PATH_USERS_FILE"

#MUESTRA LOS RESULTADOS DE LA CREACION DE LOS USUARIOS CON SUS RUTAS CORRESPONDIENTES.
echo "USUARIOS CON SUS RUTAS:"
getent passwd 2P_202406_Prog1
getent passwd 2P_202406_Prog2
getent passwd 2P_202406_Test1
getent passwd 2P_202406_Supervisor
