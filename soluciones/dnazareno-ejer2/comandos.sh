#1
#A inventario le agregue un grupomayor y los usuarios para acceder en cada nodo
#Primero replico un ejercicio anterior pero en formato ad hoc y lo ejecuto sobre los dos nodos que tengo abiertos
ansible grupomayor -m shell -a 'date>/tmp/fechahora.data' -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario
#Luego comprimo este archivo usando variables
ansible grupomayor -m archive -a "path=/tmp/fechahora.data dest=/tmp/fechahora.tar.gz" -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario
#sin usar variables
ansible grupo1 -m archive -a "path=/tmp/fechahora.data dest=/tmp/fechahora.tar.gz" -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario -u nodoansible1

#2
ansible grupomayor -m shell -a '>/tmp/aaaaccess123.data' -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario
ansible grupomayor -m shell -a '>/tmp/estetexto.txt' -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario
#Creo el playbook de nombre playbook-ejer2.yaml porque no pude ingresarle varios patrones a la opcion exclude_path con un ad hoc.
#Podria haber hecho todo en un solo playbook, si
#Compruebo la sintaxis
ansible-playbook --syntax-check playbook-ejer2.yaml -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario
#Lo corro a modo de prueba
ansible-playbook -C  playbook-ejer2.yaml -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario
#Ahora si, lo ejecuto
ansible-playbook playbook-ejer2.yaml -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario

#3
#Creo el playbook de nombre playbook-ejer3.yaml
