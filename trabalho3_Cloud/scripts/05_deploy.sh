#!/bin/bash

LOG="/app/logs/deploy.log"

deploy() {

rm -rf /var/www/html/*

cp -r /app/source/* /var/www/html/

ls -la /var/www/html

if [ -f "/var/www/html/index.html" ]
then
    echo "Deploy concluído."
else
    echo "Falha no deploy."
fi

echo "$(date) Deploy realizado." >> $LOG

}

deploy