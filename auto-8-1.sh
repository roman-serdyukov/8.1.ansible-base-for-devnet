!#/bin/bash

# Запускаем контейнеры
docker run --name centos7 -dt pycontribs/centos:7
docker run --name ubuntu -dt pycontribs/ubuntu:latest
docker run --name fedora -dt pycontribs/fedora:latest

# Проверяем, что контейнеры запущены
docker ps

# Запускае playbook. В текущей конфигурации придется ввести пароль вручную
ansible-playbook -i playbook/inventory/prod.yml playbook/site.yml  --ask-vault-pass

# Останавливаем контейнеры
docker stop centos7
docker stop ubuntu
docker stop fedora

# Проверяем, что контейнеры остановлены
docker ps -a

# Удаляем контейнеры
docker rm centos7
docker rm ubuntu
docker rm fedora

# Проверяем, что контейнеры удалены.
docker ps -a
