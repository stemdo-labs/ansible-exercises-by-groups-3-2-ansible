#1 y 2
#Me traigo el ansible.cfg con
cp -pr ../dnazareno-ejer3/ansible.cfg .
#Hice ejercicios 1 y 2 en playbook-ejer1.yaml
#3
ansible-playbook -C  playbook-ejer1.yaml --flush-cache