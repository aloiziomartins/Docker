#!/bin/bash
# Versão do Sistema Operacional:
#        Distributor ID:	Ubuntu
#        Description:	Ubuntu 22.04.2 LTS
#        Release:	22.04
#        Codename:	jammy

#Referencia:
#           https://docs.docker.com/engine/install/ubuntu/
#           https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
#           https://openai.com/product/chatgpt

# Testado dia 23 Maio 2023.

sudo apt update

# Instala pacotes necessários HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Adiciona repositorio oficial do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" |>

# Atualize novamente 
sudo apt update

# Instale o Docker Engine
sudo apt install docker-ce docker-ce-cli containerd.io -y


# Solicite o nome de usuário
read -p "Digite o nome de usuário para adicionar ao grupo Docker: " username
sudo usermod -aG docker $username

# Verifique se o Docker está em execução
sudo systemctl status docker

#Em alguns caso é necessário reiniciar o computador
