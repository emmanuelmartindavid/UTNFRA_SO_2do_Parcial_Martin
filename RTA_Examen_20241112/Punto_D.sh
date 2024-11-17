#!/bin/bash
sudo mkdir -p /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
sudo tee /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2 << EOF
Nombre: {{ student_name }}
Apellido: {{ student_lastName }}
Division: {{ student_class }}
EOF

sudo tee /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2 << EOF
Ip: {{ pc_ip }}
Descripción: {{ pc_distribution }}
Cantidad_de_cores: {{ pc_cores }}
EOF


sudo tee -a /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml << EOF
- name: Create required directories
  file:
    path: "{{ item }}"
    state: directory
    mode: '0755'
  with_items:
    - /tmp/2do_parcial/alumno
    - /tmp/2do_parcial/equipo

- name: Create student file data
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
  vars:
    student_name: "Emmanuel"
    student_lastName: "Martín"
    student_class: "115"

- name: Create pc file data
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
  vars:
    pc_ip: "$(curl -s ifconfig.me)"
    pc_distribution: "$(lsb_release -a | grep D)"
    pc_cores: "$(nproc)"

- name: Set permitions 2PSupervisores
  lineinfile:
    path: /etc/sudoers
    state: present
    regexp: '^%2PSupervisores'
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'
EOF

cd /home/osboxes/repogit/UTN-FRA_SO_Examenes/202406/ansible
sudo ansible-playbook -i inventory/hosts playbook.yml
