#1
#Modifique el archivo /etc/hosts para poder usar alias en el archivo inventario-ejer1. 
#Puse una copia de ese archivo hosts en esta carpeta

#2
#archivo inventario-ejer2

#3
#copie el archivo ansible.cfg en esta carpeta con el comando
cp -pr /etc/ansible/ansible.cfg .
#y luego lo edite para que tome el inventario-ejer2, superusuario root y usuario remoto nodoansible1
#a posterior ya lo borre, hoy no esta este archivo. Uso el que esta en su lugar original

#4
#forma tradicional
ping nodo1
ping nodo4
ping nodo5
#con ansible, previamente debo tener conexion ssh con esos nodos
ansible webservers -m ping -i inventario-ejer2 -u usuario-pruebas

#5
ansible webservers -m shell -a 'apt install apache2' -i inventario-ejer2 -u usuario-pruebas

#6
#archivo playbook-ejer6.yaml en esta carpeta

#7
#archivo playbook-ejer7.yaml en esta carpeta

#8
#archivo playbook-ejer7-modif.yaml en esta carpeta