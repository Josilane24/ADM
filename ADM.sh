#!/bin/bash


function caso1:
sudo apt-get update
sudo apt-get install vsftpd


function caso2:
sed -i "s/anonymous_enable=NO/anonymous_enable=YES/" /etc/vsftpd.conf
/etc/init.d/vsftpd restart


function caso3:
sed -i "s/anonymous_enable=YES/anonymous_enable=NO/" /etc/vsftpd.conf
/etc/init.d/vsftpd restart


function caso4:
sed -i 's/^#write_enable=YES/write_enable=YES/' /etc/vsftpd.conf
/etc/init.d/vsftpd restart


function caso5:
sed -i "s/write_enable=YES/#write_enable=YES/" /etc/vsftpd.conf
/etc/init.d/vsftpd restart


function caso6:
apt-get remove vsftpd
apt-get purge vsftpd


function caso7:
resposta="n"


resposta="s"

while [ $resposta = "s" ]; do
clear
echo " //---- Gerenciador FTP ----//"
echo
echo "1) Instalar servidor FTP."
echo "2) Habilitar acesso anônimo."
echo "3) Dasabilitar acesso anônimo."
echo "4) Habilitar envio/escrita de arquivos."
echo "5) Desabilitar envio/escrita de arquivos."
echo "6) Desinstalar servidor FTP."
echo "7) Sair."
echo
echo "Informe o número da opção desejada: "
read opcao
echo
case $opcao in
    	1) caso1 ;;
    	2) caso2 ;;
    	3) caso3 ;;
    	4) caso4 ;;
    	5) caso5 ;;
    	6) caso6 ;;
    	7) caso7 ;;
esac
echo
echo "Deseja continuar? (s/n)"
echo resposta
done
