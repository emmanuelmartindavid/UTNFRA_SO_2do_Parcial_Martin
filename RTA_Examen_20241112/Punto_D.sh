#!/bin/bash

#PRIMERO CREE LOS ARCHIVOS YAML PARA SEPARAR CADA TAREA SOLICITADA Y LOS LLAME EN EL MAIN.YML
#touch create_directories.yml
#touch create_student_file.yml
#touch create_pc_file.yml
#touch set_permissions.yml
#touch create_templates.yml

#DESPUES EDITE CADA UNO PARA EJECUTAR LO PEDIDO
# create_directories.yml
#nano create_student_file.yml
#nano create_pc_file.yml
#nano set_permissions.yml
#nano create_templates.yml

#----------------------------------create_directories.yml--------------------------------------------------=
#---
#- name: Create required directories
#  file:
#    path: "{{ item }}"
#    state: directory
#    mode: '0755'
#  with_items:
#    - /tmp/2do_parcial/alumno
#    - /tmp/2do_parcial/equipo
#----------------------------------------------------------------------------------------------------------=

#----------------------------------create_student_file.yml-------------------------------------------------=
#CREACION DE ARCHIVO CON DATOS ESTUDIANTE OBTENIDO DESDE EL ARCHIVO TXT.J2
#---
#- name: Create student file data
#  template:
#    src: datos_alumno.txt.j2
#    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
#----------------------------------------------------------------------------------------------------------=

#----------------------------------create_pc_file.yml--------------------------------------------------=
#CREACION DE ARCHIVO CON DATOS DE EQUIPO OBTENIDOS DESDE EL ARCHIVO TXT.J2
#---
#- name: Create pc file data
#  template:
#    src: datos_equipo.txt.j2
#    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
#----------------------------------------------------------------------------------------------------------=

#----------------------------------set_permissions.yml--------------------------------------------------=
#CONFIGURAR PERMISOS PARA 2PSUPERVISORES
#---
#- name: Set permissions 2PSupervisores
#  become: yes
#  lineinfile:
#    path: /etc/sudoers
#    state: present
#    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
#    validate: 'visudo -cf %s'
#----------------------------------------------------------------------------------------------------------=


#REDIRECCION Y EJECUCION DE PLAYBOOK.YML
cd /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/202406/ansible
sudo ansible-playbook -i inventory/hosts playbook.yml
