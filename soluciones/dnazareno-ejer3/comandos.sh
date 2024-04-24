#1
#Creo variables-ejer1.yaml y playbook-ejer1.yaml
#Hago la inclusion de variables-ejer1.yaml en playbook-ejer1.yaml

#2
#playbook-ejer2.yaml, dev-vars.yaml, pre-vars.yaml, pro-vars.yaml
ansible-playbook -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario playbook-ejer2.yaml

#3
#playbook-ejer3.yaml
ansible-playbook -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario playbook-ejer3.yaml

#4
ansible grupomayor -m setup -a 'filter=ansible_all_ipv6_addresses' -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario > ipv6.txt

#5
#creo hechos.fact y playbook-ejer5.yaml
ansible-playbook -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario playbook-ejer5.yaml
ansible grupomayor -m setup -a 'filter=ansible_local' -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario