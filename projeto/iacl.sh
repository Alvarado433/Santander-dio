#!/bin/bash

echo "criando novos diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"

useradd -m -c "Carlos User" -s /bin/bash -p $(openssl passwd -1 "senha") carlos
usermod -aG GRP_ADM carlos  # Adicionando Carlos ao grupo GRP_ADM

useradd -m -c "Dani User" -s /bin/bash -p $(openssl passwd -1 "senha") daniela
usermod -aG GRP_VEN daniela  # Adicionando Dani ao grupo GRP_VEN

useradd -m -c "Spyke User" -s /bin/bash -p $(openssl passwd -1 "senha") wolf
usermod -aG GRP_SEC wolf  # Adicionando Spyke ao grupo GRP_SEC

useradd -m -c "Isabelle User" -s /bin/bash -p $(openssl passwd -1 "senha") isabelle
usermod -aG GRP_ADM isabelle  # Adicionando Isabelle ao grupo GRP_ADM

useradd -m -c "Maria User" -s /bin/bash -p $(openssl passwd -1 "senha") maria
usermod -aG GRP_VEN maria  # Adicionando Maria ao grupo GRP_VEN


echo "especifianco permissoes dos diretorios"

chown root::GRP_ADM /adm
chown root::GRP_VEN /ven
chown root::GRP_SEC /sec

chown  770 /adm
chown  770 /ven
chown  770 /sec
chown  777 /publico

echo "fim "

 





