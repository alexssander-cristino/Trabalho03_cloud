#!/bin/bash

ARQ="/app/logs/relatorio_execucao.txt"

echo "===== RELATÓRIO =====" > $ARQ
echo "Projeto: Sistema de Monitoramento de Segurança" >> $ARQ
echo "Aluno: Alexssander Cassio Comper Cristino" >> $ARQ

echo "" >> $ARQ

df -h >> $ARQ

echo "" >> $ARQ

du -sh /app/* >> $ARQ

echo "" >> $ARQ

ps aux | grep apache2

echo "" >> $ARQ

ls -lh /app/backups >> $ARQ

echo "" >> $ARQ

cat /etc/passwd | tail >> $ARQ

echo "Relatório gerado."