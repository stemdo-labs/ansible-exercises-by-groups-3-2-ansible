#1
ansible-playbook -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario playbook-ejer1.yaml

#2
ansible-playbook -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario playbook-ejer2.yaml

#3
ansible-playbook -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario playbook-ejer3.yaml

#4
ansible-vault encrypt missecretos.yaml
#123456
ansible-playbook -i /home/vboxuser/Workspace/gitrepo/ansible-exercises-by-groups-3-2-ansible/soluciones/dnazareno-ejer1/inventario playbook-ejer4.yaml --ask-vault-pass

#5
ansible-galaxy role install geerlingguy.mysql

#6
ansible-galaxy role install ahu-services.postgresql
