#!/bin/bash

BASE="/app/seguranca"

criar_estrutura() {

rm -rf $BASE

mkdir -p $BASE/cameras
mkdir -p $BASE/alertas
mkdir -p $BASE/incidentes
mkdir -p $BASE/logs
mkdir -p $BASE/publicacao

touch $BASE/alertas/alerta_inicial.txt

echo "Estrutura criada."

}

criar_estrutura