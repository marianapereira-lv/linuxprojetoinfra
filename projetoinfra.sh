#!/bin/bash

echo "Criando diretórios..."

mkdir /publicoprojeto
mkdir /admprojeto
mkdir /venprojeto
mkdir /secprojeto

echo "Criando grupos de usuários..."

groupadd GRP_ADMPROJETO
groupadd GRP_VENPROJETO
groupadd GRP_SECPROJETO

echo  "Criando usuários..."

useradd carlosprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADMPROJETO
useradd mariaprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADMPROJETO
useradd joaoprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha1123) -G GRP_ADMPROJETo

useradd deboraprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VENPROJETO
useradd sebastianaprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VENPROJETO
useradd robertoprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VENPROJETO

useradd josefinaprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SECPROJETO
useradd amandaprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SECPROJETO
useradd rogerioprojeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SECPROJET0

echo "Especificando Permissões dos diretórios..."
chown root:GRP_ADMPROJETO /admprojeto
chown root:GRP_VENPROJETO /venprojeto
chown root:GRP_SECPROJETO /secprojeto

chmod 770/admprojeto
chmod 770 /venprojeto
chmod 770 /secprojeto
chmod 777 /publicoprojeto

echo "Finalizado primeiro script..."

