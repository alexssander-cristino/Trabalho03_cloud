#!/bin/bash

groupadd seguranca_ops

useradd -m operador_camera

mkdir -p /app/seguranca/incidentes

chown operador_camera:seguranca_ops \
/app/seguranca/incidentes

chmod 750 \
/app/seguranca/incidentes

echo "Permissões configuradas."