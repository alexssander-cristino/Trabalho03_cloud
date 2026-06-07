#!/bin/bash

while true
do

clear

echo "Criado por: Alexssander Cassio Comper Cristino"
echo "Instituição: UNIDAVI"
echo "Tema: Sistema de Monitoramento de Segurança"

echo ""
echo "===== MENU DEVOPS CLOUD ====="
echo "1 - Atualizar sistema"
echo "2 - Instalar Apache"
echo "3 - Criar estrutura"
echo "4 - Backup"
echo "5 - Deploy"
echo "6 - Processos"
echo "7 - Monitoramento"
echo "8 - Usuários"
echo "9 - Relatório"
echo "0 - Sair"

read opcao

case $opcao in

1) ./01_update.sh ;;
2) ./02_apache.sh ;;
3) ./03_estrutura.sh ;;
4) ./04_backup.sh ;;
5) ./05_deploy.sh ;;
6) ./06_processos.sh listar ;;
7) ./07_monitoramento.sh ;;
8) ./08_usuarios_permissoes.sh ;;
9) ./09_relatorio.sh ;;
0) exit ;;

esac

read -p "ENTER para continuar"

done