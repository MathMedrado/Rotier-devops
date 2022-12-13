#!/bin/bash
echo "Executando o update"
apt update
echo "Instalando o Pacote"
apt install ansible -y
cd /vagrant
ansible-playbook main.yml
#docker run -dit --name my-running-app -p 80:80 httpd
docker-compose up 