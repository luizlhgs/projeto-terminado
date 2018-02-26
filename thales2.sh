#!/bin/bash

#apresentação
clear
echo "OLA. SEJA BEM VINDO"
echo
echo "SIGA OS EXEMPLOS PARA PREENCHER AS INFORMAÇOES A SEGUIR"
sleep 1
clear

#Nome de usuario
while true
 do
read -p "Digite seu nome (não use numeros): " NOME
echo $NOME | grep [0-9]

        if (( $? == 0 )); then
                clear
                echo "NOME INVALIDO!"
                sleep 1
                clear
        else
                break
                clear
        fi

done

#Email
clear
while true
do
read -p "Digite seu email (exemplo@gmail.com): " EMAIL
echo $EMAIL | grep -E '[a-z]{1,9}[@][a-z]{1,9}(\.[com]|\.[com]\.[br])'

        if (( $? == 1 )); then
                clear
                echo "EMAIL INVALIDO!"
                sleep 1
                clear
        else
                break
                clear
        fi
done

#TELEFONE
clear
while true
do
read -p "Digite seu telefone como no exemplo '(99)1234-4321' " TELEFONE

        if (( $? == 1 )); then
                clear
                echo "Telefone invalido. siga o exemplo"
                sleep 1
                clear
        else
                break
                clear
        fi
done

#RG
clear
while true
do
read -p "Digite seu RG. exemplo 11.111.111-1: " RG
echo $RG | grep -E '([0-9][0-9]\.)([0-9][0-9][0-9]\.)([0-9][0-9][0-9]\-)[0-9]'

        if (( $? == 1 )); then
                clear
                echo "RG invalido. Digite seu RG como no exemplo"
                sleep 1
                clear
        else
                break
                clear
        fi
done

#CPF
clear
while true
do
read -p "Digite seu CPF. exemplo 505.550.055-05echo $TELEFONE | grep -E '\([0-9][0-9]\)([0-9]){4,5}(\-)?{0,1}([0-9]){4}'

        if (( $? == 1 )); then
                clear
                echo "Telefone invalido. siga o exemplo"
                sleep 1
                clear
        else
                break
                clear
        fi
done

#RG
clear
while true
do
read -p "Digite seu RG. exemplo 11.111.111-1: " RG
echo $RG | grep -E '([0-9][0-9]\.)([0-9][0-9][0-9]\.)([0-9][0-9][0-9]\-)[0-9]'

        if (( $? == 1 )); then
                clear
                echo "RG invalido. Digite seu RG como no exemplo"
                sleep 1
                clear
        else
                break
                clear
        fi
done

#CPF
clear
while true
do
read -p "Digite seu CPF. exemplo 505.550.055-05: " CPF
echo $CPF | grep -E '([0-9][0-9][0-9]\.){2}([0-9][0-9][0-9]\-)([0-9][0-9])'

        if (( $? == 0 )); then
                break
                claer
        else
                clear
                echo "CPF invalido. Digite seu CPF seguindo o exemplo"
                sleep 1
                clear
        fi
done

#DATA
clear
while true
do
read -p "Digite sua data de nascimento. exemplo (06/06/1996): " DATA
echo $DATA | grep -E '(0[1-9]/|1[0-9]/|2[0-9]/|3[0-1]/)(0[1-9]/|1[0-2]/)(19[0-9][0-9]|20[0-1][0-8])'

        if (( $? == 0 ));then
                break
                clear
        else
                clear
                echo "Data invalida. Digite sua data como no exemplo"
                sleep 1
                clear
        fi
done

#IP
clear
while true
do
read -p "Digite um IP. Exemplo (192.168.1.111): " IP
echo $IP | grep -E '([0-9]\.|[1-9][0-9]|1[0-9][0-9]\.|2[0-5][0-4]\.){3}([0-9]|[0-9][0-9]|1[1-9][0-9]|2[0-5][0-4])'

        if (( $? == 0 ));then
                break
                clear
        else
                clear
                echo "IP invalido. Digite seu IP como no exemplo"
                sleep 1
                clear
        fi
done

#MASCARA
clear
while true
do
read -p "Digite um mascara. Exemplo (255.255.255.255): " MASCARA
echo $MASCARA | grep -E '(0\.|1[0-9][0-9]\.|2[0-5][0-5]\.){3}(0|1[0-9][0-9]|2[0-5][0-5])'

        if (( $? == 0 ));then
                break
                clear
        else
                clear
                echo "Mascara invalida. Digite a mascara como no exemplo"
                sleep 1
                clear
        fi
done
clear
echo "NOME: "$NOME
echo "EMAIL: " $EMAIL
echo "TELEFONE: "$TELEFONE
echo "RG: "$RG
echo "CPF: "$CPF
echo "DATA: "$DATA
echo "IP: "$IP
echo "MASCARA: "$MASCARA
echo "Dados coletados com sucesso no diretorio /home/vagrant/dados.txt"
sleep 2
echo
#inserindo informaçoes no arquivo 'dados.txt'
echo $NOME $EMAIL $TELEFONE $RG $CPF $DATA $IP $MASCARA >/home/vagrant/dados.txt



