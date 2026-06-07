#!/bin/bash

LOG="/app/logs/update.log"

atualizar_sistema() {

echo "Atualizando sistema..."

apt update && apt upgrade -y

if [ $? -eq 0 ]; then
    echo "$(date) - Atualização concluída" >> $LOG
    echo "Sucesso!"
else
    echo "$(date) - Erro na atualização" >> $LOG
    echo "Falha!"
fi

}

atualizar_sistema