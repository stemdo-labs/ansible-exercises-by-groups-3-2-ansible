#1
#Me traigo el ansible.cfg con
cp -pr ../dnazareno-ejer1/ansible.cfg .
#Edito el archivo para que use inventario-ejer1
#A inventario-ejer1 le agregue un grupomayor y los usuarios para acceder en cada nodo
#Primero replico un ejercicio anterior pero en formato ad hoc y lo ejecuto sobre los dos nodos que tengo abiertos
ansible grupomayor -m shell -a 'date>/tmp/fechahora.data'
#Luego comprimo este archivo usando variables
ansible grupomayor -m archive -a "path=/tmp/fechahora.data dest=/tmp/fechahora.tar.gz"
#sin usar variables
ansible grupo1 -m archive -a "path=/tmp/fechahora.data dest=/tmp/fechahora.tar.gz" -i inventario-ejer1 -u nodoansible1

#2
ansible grupomayor -m shell -a '>/tmp/aaaaccess123.data'
ansible grupomayor -m shell -a '>/tmp/estetexto.txt'
#Creo el playbook de nombre playbook-ejer2.yaml porque no pude ingresarle varios patrones a la opcion exclude_path con un ad hoc.
#Podria haber hecho todo en un solo playbook, si
#Compruebo la sintaxis
ansible-playbook --syntax-check playbook-ejer2.yaml
#Lo corro a modo de prueba
ansible-playbook -C  playbook-ejer2.yaml
#Ahora si, lo ejecuto
ansible-playbook playbook-ejer2.yaml

#3
#Creo el playbook de nombre playbook-ejer3.yaml
