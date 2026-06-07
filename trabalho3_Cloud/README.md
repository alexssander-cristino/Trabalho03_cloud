# Trabalho 03 - Linux, Shell Script e Cloud Computing

## Aluno

Alexssander Cassio Comper Cristino

## Tema

Sistema de Monitoramento de Segurança

---

# Descrição do Projeto

Este projeto simula um ambiente de infraestrutura utilizado por uma Central de Monitoramento de Segurança.

O ambiente foi desenvolvido utilizando Docker, Ubuntu Server, Apache e Shell Script, permitindo automatizar tarefas operacionais comuns encontradas em ambientes de DevOps e Cloud Computing.

A solução contempla atualização do sistema, instalação de serviços, criação de estruturas de diretórios, publicação de páginas web, geração de backups, monitoramento de recursos do sistema, gerenciamento de usuários e permissões, além da geração de relatórios operacionais.

---

# Tecnologias Utilizadas

* Ubuntu Server 22.04
* Docker
* Docker Compose
* Apache2
* Shell Script
* GitHub
* DockerHub

---

# Estrutura do Projeto

```text
trabalho03-cloud-shell/
├── Dockerfile
├── docker-compose.yml
├── README.md
├── scripts/
│   ├── 01_update.sh
│   ├── 02_apache.sh
│   ├── 03_estrutura.sh
│   ├── 04_backup.sh
│   ├── 05_deploy.sh
│   ├── 06_processos.sh
│   ├── 07_monitoramento.sh
│   ├── 08_usuarios_permissoes.sh
│   ├── 09_relatorio.sh
│   └── menu.sh
├── source/
│   ├── index.html
│   ├── sobre.html
│   └── assets/
├── backups/
├── logs/
└── evidencias/
```

---

# Estrutura Temática

O projeto foi adaptado para o tema Sistema de Monitoramento de Segurança.

Diretórios utilizados:

```text
/app/seguranca/
├── cameras
├── alertas
├── incidentes
├── sensores
├── relatorios
├── logs
└── publicacao
```

---

# Como Executar o Projeto

Construir e iniciar o container:

```bash
docker compose up -d --build
```

Verificar se o container está em execução:

```bash
docker ps
```

Acessar o container:

```bash
docker exec -it trabalho03-linux bash
```

---

# Como Acessar o Site

Após iniciar o container, acessar:

```text
http://localhost:8080
```

---

# Scripts Disponíveis

| Script                    | Descrição                                     |
| ------------------------- | --------------------------------------------- |
| 01_update.sh              | Atualiza os pacotes do sistema                |
| 02_apache.sh              | Instala e valida o Apache                     |
| 03_estrutura.sh           | Cria a estrutura do projeto                   |
| 04_backup.sh              | Realiza backup compactado                     |
| 05_deploy.sh              | Publica o site no Apache                      |
| 06_processos.sh           | Gerencia processos do sistema                 |
| 07_monitoramento.sh       | Monitora CPU, RAM, Disco e Apache             |
| 08_usuarios_permissoes.sh | Configura usuários e permissões               |
| 09_relatorio.sh           | Gera relatório operacional                    |
| menu.sh                   | Executa as principais rotinas através de menu |

---

# Como Executar Cada Script

Entrar na pasta:

```bash
cd /app/scripts
```

Conceder permissão:

```bash
chmod +x *.sh
```

Executar individualmente:

```bash
./01_update.sh

./02_apache.sh

./03_estrutura.sh

./04_backup.sh

./05_deploy.sh

./06_processos.sh listar

./06_processos.sh buscar apache2

./07_monitoramento.sh

./08_usuarios_permissoes.sh

./09_relatorio.sh
```

---

# Como Executar o Menu Principal

```bash
./menu.sh
```

O menu permite executar todas as principais rotinas do projeto de forma interativa.

---

# Logs Gerados

Os scripts geram logs automaticamente na pasta:

```text
logs/
```

Exemplos:

```text
logs/update.log
logs/apache.log
logs/deploy.log
logs/monitoramento.log
logs/relatorio_execucao.txt
```

---

# Backup Automatizado

Os backups são armazenados em:

```text
backups/
```

Formato:

```text
backup_seguranca_2026-06-07_20-30.tar.gz
```

---

# Evidências

As evidências solicitadas pelo professor encontram-se na pasta:

```text
evidencias/
```

Contendo:

* Container em execução
* Volume Docker configurado
* Scripts com permissão de execução
* Atualização do sistema
* Instalação do Apache
* Estrutura de diretórios
* Backup gerado
* Deploy realizado
* Site acessível
* Monitoramento do sistema
* Usuários e permissões
* Relatório operacional
* Publicação da imagem no DockerHub

---

# DockerHub

Link da imagem publicada:

```text
https://hub.docker.com/r/SEU_USUARIO/trabalho03-linux
```

---

# Principais Dificuldades Encontradas

Durante o desenvolvimento foram encontradas dificuldades relacionadas à configuração inicial do Docker, gerenciamento de permissões em ambiente Linux e adaptação dos scripts para execução dentro de containers.

A atividade contribuiu para ampliar os conhecimentos sobre automação operacional, administração de sistemas Linux e conceitos de Cloud Computing.

---

# Uso de Inteligência Artificial

Foi utilizada Inteligência Artificial como ferramenta de apoio para esclarecimento de dúvidas, revisão de scripts Shell, correção de erros de sintaxe e apoio na elaboração da documentação.

Todos os códigos foram analisados, ajustados e testados manualmente antes da entrega.

O uso da IA auxiliou na compreensão de conceitos relacionados a Docker, Shell Script, Apache e automação de tarefas administrativas em ambientes Linux.

---

# Conclusão

O projeto permitiu aplicar conceitos de Cloud Computing, Docker, Linux e automação operacional em um cenário próximo ao encontrado em ambientes reais de monitoramento de segurança.

A utilização de scripts Shell possibilitou automatizar tarefas repetitivas, aumentar a organização do ambiente e demonstrar práticas básicas utilizadas em operações DevOps.
