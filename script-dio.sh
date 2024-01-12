#!/bin/bash

echo "atualizando o servidor..."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "baixando e copiando os arquivos da alicação..."
cd /tmp
wget https://www.github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/