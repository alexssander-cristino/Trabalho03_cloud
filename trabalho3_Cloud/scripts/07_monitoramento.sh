#!/bin/bash

LOG="/app/logs/monitoramento.log"

monitorar_sistema() {

echo "===== MONITORAMENTO DO SISTEMA ====="

DATA=$(date "+%d/%m/%Y %H:%M:%S")

echo "Data/Hora: $DATA"
echo ""

# CPU
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2)}')

echo "Uso de CPU: ${CPU}%"

if [ "$CPU" -gt 80 ]; then
    echo "[ALERTA] CPU acima de 80%"
fi

echo ""

# Memória
MEMORIA=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "Uso de Memória: ${MEMORIA}%"

if [ "$MEMORIA" -gt 80 ]; then
    echo "[ALERTA] Memória acima de 80%"
fi

echo ""

# Disco
DISCO=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Uso de Disco: ${DISCO}%"

if [ "$DISCO" -gt 80 ]; then
    echo "[ALERTA] Disco acima de 80%"
fi

echo ""

# Apache
if pgrep apache2 > /dev/null
then
    echo "[OK] Apache em execução"
else
    echo "[ALERTA] Apache parado"
fi

echo ""
echo "Monitoramento finalizado."

# Salva em log
{
echo "==========================="
echo "$DATA"
echo "CPU: ${CPU}%"
echo "MEMÓRIA: ${MEMORIA}%"
echo "DISCO: ${DISCO}%"

if pgrep apache2 > /dev/null
then
    echo "APACHE: OK"
else
    echo "APACHE: PARADO"
fi

} >> "$LOG"

}

monitorar_sistema