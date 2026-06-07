#!/bin/bash

ORIGEM="/app/seguranca"
DESTINO="/app/backups"

backup() {

DATA=$(date +"%Y-%m-%d_%H-%M")

ARQUIVO="backup_seguranca_$DATA.tar.gz"

tar -czf $DESTINO/$ARQUIVO $ORIGEM

if [ -f "$DESTINO/$ARQUIVO" ]
then
    echo "Backup criado."
else
    echo "Erro no backup."
fi

}

backup