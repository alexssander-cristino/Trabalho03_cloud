FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Atualiza repositórios e instala pacotes necessários
RUN apt update && apt install -y \
    apache2 \
    nano \
    sudo \
    tar \
    procps \
    net-tools \
    curl \
    vim \
    && apt clean

# Diretório principal do projeto
WORKDIR /app

# Copia os arquivos para dentro do container
COPY . /app

# Cria diretórios obrigatórios caso não existam
RUN mkdir -p \
    /app/logs \
    /app/backups \
    /app/evidencias \
    /app/source/assets

# Dá permissão de execução aos scripts
RUN chmod +x /app/scripts/*.sh

# Porta utilizada pelo Apache
EXPOSE 80

# Inicializa Apache em foreground
CMD ["apachectl", "-D", "FOREGROUND"]