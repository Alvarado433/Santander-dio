#/!bin/bash

echo "criando usuarios"
useradd guest03 -c "convidados" -s /bin/bash -m -p $(openssl passwd -6 senha)
passwd guest03 -e

useradd guest04 -c "usuario02" -s /bin/bash -m -p $(openssl passwd -6 senha)
passwd guest04 -e

useradd guest05 -c "usuario03" -s /bin/bash -m -p $(openssl passwd -6 senha) 
passwd guest05 -e

echo "finalizar "


