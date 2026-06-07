#!/bin/bash

LOG="/app/logs/apache.log"

instalar_apache() {
apt install apache2 -y
}

verificar_apache() {

if dpkg -l | grep apache2 > /dev/null
then
    echo "Apache instalado."
else
    echo "Apache não encontrado."
fi

}

versao_apache() {
apache2 -v
}

instalar_apache
verificar_apache
versao_apache

echo "$(date) Apache validado" >> $LOG