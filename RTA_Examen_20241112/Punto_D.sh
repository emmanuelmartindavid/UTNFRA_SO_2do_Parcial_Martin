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

#----------------------------------create_templates.yml--------------------------------------------------=
#CREACION DE ARCHIVOS TXT.J2 CORRESPONDIENTES PARA UTILIZAR COMO MODELO PARA CREACION DE LOS TXT SOLICITADOS
#---
#- name: Create templates directory
#  file:
#    path: /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/202406/ansible/roles/2do_parcial/templates
#    state: directory
#    mode: '0755'
#- name: Create student template
#  copy:
#    content: |
#      Nombre: Emmanuel
#      Apellido: Martin
#      Division: 115
#    dest: /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
#- name: Get IP address
#  command: curl -s ifconfig.me
#  register: ip_address
#
#- name: Get distribution info
#  shell: lsb_release -d | sed 's/Description:\s*//'
#  register: distribution_info
#
#- name: Get number of cores
#  command: nproc
#  register: num_cores
#
#- name: Create pc template
#  copy:
#    content: |
#      Ip: {{ ip_address.stdout }}
#      Distribucion: {{ distribution_info.stdout }}
#      Cantidad_de_cores: {{ num_cores.stdout }}
#    dest: /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2
#---------------------------------------------------------------------------------------------------------------=


#REDIRECCION Y EJECUCION DE PLAYBOOK.YML
cd /home/emmanuel/repogit/UTNFRA_SO_2do_Parcial_Martin/202406/ansible
sudo ansible-playbook -i inventory/hosts playbook.yml
