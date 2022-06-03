# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?
2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?
3. Какой командой можно зашифровать файл?
4. Какой командой можно расшифровать файл?
5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?
6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?
7. Как называется модуль подключения к host на windows?
8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh
9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?

## Ответ
1. 
```bash
roman@DME-UBUNTU:~/Документы/projects/8.1.ansible-base-for-devnet$ cat playbook/group_vars/all/examp.yml 
---
  some_fact: 'all default fact'
  ```
2. 
```bash
roman@DME-UBUNTU:~/Документы/projects/8.1.ansible-base-for-devnet$ ansible-playbook -i playbook/inventory/test.yml  playbook/site.yml 
```
3. 
```bash
ansible-vault encrypt
```
4. 
```bash
ansible-vault decrypt
```
5. Можно в терминале с помощью команды
```bash
ansible-vault view
```
6. 
```bash
roman@DME-UBUNTU:~/Документы/projects/8.1.ansible-base-for-devnet$ ansible-playbook -i playbook/inventory/prod.yml playbook/site.yml  --ask-vault-pass
```
7. Модуль winrm
8. 
```bash
roman@DME-UBUNTU:~/Документы/projects/8.1.ansible-base-for-devnet$ ansible-doc -t connection ssh
```
9. Параметр - remote_user