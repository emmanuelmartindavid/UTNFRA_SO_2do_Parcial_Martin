#!/bin/bash
USER="$1"
INFILE="$2"


mapfile -t lines < "$INFILE"

for line in "${lines[@]}"; do
  if [[ $line =~ ^# ]]; then
    continue
  fi
  IFS=$',' read -r -a field <<< "$line"
  if ! getent group "${field[1]}"; then
        sudo groupadd "${field[1]}"
  fi
        echo "LINEAS : ${field[0]} - ${field[1]} - ${field[2]}"
  if ! id "${field[0]}"; then
        sudo useradd -m -d "${field[2]}" -s /bin/bash -c "${field[0]}" -g "${field[1]}" -p "$(sudo grep $USER /etc/shadow | awk -F ':' '{print $2}')" "${field[0]}"
  fi
done
#done < "$INFILE"

echo "USUARIOS CON SUS RUTAS:"
getent passwd 2P_202406_Prog1
getent passwd 2P_202406_Prog2
getent passwd 2P_202406_Test1
getent passwd 2P_202406_Supervisor
