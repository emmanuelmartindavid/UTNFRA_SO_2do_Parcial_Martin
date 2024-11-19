#!/bin/bash

# Definir las rutas de los archivos y directorios
#TEMPLATES_DIR="/home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/202406/ansible/roles/2do_parcial/templates"
#ALUMNO_FILE="$TEMPLATES_DIR/datos_alumno.txt.j2"
#EQUIPO_FILE="$TEMPLATES_DIR/datos_equipo.txt.j2"
MAIN_YML="/home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/202406/ansible/roles/2do_parcial/tasks/main.yml"
DIRECTORIOS="/home/emmanuel/2do_parcial"
TMP_DIRECTORIOS="/tmp/2do_parcial"

#sudo rm -rf /home/emmanuel/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
sudo rm -rf /tmp/2do_parcial
# Eliminar los archivos de plantilla
#if [ -f "$ALUMNO_FILE" ]; then
#    sudo rm "$ALUMNO_FILE"
#    echo "Archivo $ALUMNO_FILE eliminado."
#fi

if [ -f "$EQUIPO_FILE" ]; then
    sudo rm "$EQUIPO_FILE"
    echo "Archivo $EQUIPO_FILE eliminado."
fi

# Eliminar el directorio de plantillas
if [ -d "$TEMPLATES_DIR" ]; then
    sudo rm -r "$TEMPLATES_DIR"
    echo "Directorio de plantillas $TEMPLATES_DIR eliminado."
fi

# Eliminar los directorios creados en /home/osboxes/2do_parcial
if [ -d "$DIRECTORIOS/alumno" ]; then
    sudo rm -r "$DIRECTORIOS/alumno"
    echo "Directorio $DIRECTORIOS/alumno eliminado."
fi

if [ -d "$DIRECTORIOS/equipo" ]; then
    sudo rm -r "$DIRECTORIOS/equipo"
    echo "Directorio $DIRECTORIOS/equipo eliminado."
fi

# Eliminar los directorios creados en /tmp/2do_parcial
if [ -d "$TMP_DIRECTORIOS/alumno" ]; then
    sudo rm -r "$TMP_DIRECTORIOS/alumno"
    echo "Directorio $TMP_DIRECTORIOS/alumno eliminado."
fi

if [ -d "$TMP_DIRECTORIOS/equipo" ]; then
    sudo rm -r "$TMP_DIRECTORIOS/equipo"
    echo "Directorio $TMP_DIRECTORIOS/equipo eliminado."
fi

# Eliminar las tareas añadidas a main.yml
sudo sed -i '/# Nuevas tareas añadidas/,$d' "$MAIN_YML"
echo "Tareas añadidas a $MAIN_YML eliminadas."

# Eliminar la línea en sudoers
sudo sed -i '/^%2PSupervisores ALL=(ALL) NOPASSWD: ALL/d' /etc/sudoers
echo "Línea para 2PSupervisores eliminada de sudoers."

echo "Reversión completada."
