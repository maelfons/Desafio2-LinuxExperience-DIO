#!/bin/bash

echo "Script para instalação e criação para servidores WEB"

echo "Atualizando arquivos do sistema"

apt-get update
apt-get upgrade -y

echo "Instalando Apache"

apt-get install apache2 -y

echo "Instalando Unzip"

apt-get install unzip -y

echo "Recebendo aplicação web"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando aplicação e direcionando para o Apache"

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
