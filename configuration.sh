#!/bin/bash

echo -e "\e[31m -----------------------\e[0m"
echo -e "\e[37;41m|  Criando pastas  ...  |\e[0m"
echo -e "\e[31m -----------------------\e[0m"
mkdir /publico && mkdir /adm && mkdir /ven && mkdir /sec
sleep 2 && echo -e "\e[37;42mPASTAS CRIADAS!\e[0m"

echo -e "\e[31m --------------------\e[0m"
echo -e "\e[37;41m|  Criando grupos... |\e[0m"
echo -e "\e[31m --------------------\e[0m"
groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC
sleep 2 && echo -e "\e[37;42mGRUPOS CRIADOS!\e[0m"

echo -e "\e[31m ---------------------------------\e[0m"
echo -e "\e[37;41m|       Criando usuários...       |\e[0m"
echo -e "\e[31m ---------------------------------\e[0m"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM && passwd carlos -e && useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM && passwd maria -e && useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM && passwd joao -e && useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN && passwd debora -e && useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN && passwd sebastiana -e && useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN && passwd roberto -e && useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC && passwd josefina -e && useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC && passwd amanda -e && useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC && passwd rogerio -e && 
sleep 2 && echo -e "\e[37;42mUSUÁRIOS CRIADOS!\e[0m"

echo -e "\e[31m ---------------------------------\e[0m"
echo -e "\e[37;41m|    Definindo permissões...      |\e[0m"
echo -e "\e[31m ---------------------------------\e[0m"
chown root:GRP_ADM /adm && chown root:GRP_VEN /ven && chown root:GRP_SEC /sec && chmod 770 /adm && chmod 770 /ven && chmod 770 /sec && chmod 777 /publico
sleep 2 && echo -e "\e[37;42mPERMISSÕES DEFINIDAS!\e[0m" && sleep 2 && clear

echo -e "\e[47;43mCONFIGURAÇÃO REALIZADA\e[0m"

