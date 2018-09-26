sny-vector based on Joomla Framevork
====================================

[Настройка окружения для PHP разработчиков](https://habr.com/post/314032/)

Проблема при настройке окружения для docker-machine. 
Сделал image и собрал его на новом Mac и разместил его в [Docker Hub](https://hub.docker.com/)
```bash
eval $(docer-machine env default)
docker login
docker tag snt-vector_joomla_web sv99/snt-vector_joomla_web
docker push sv99/snt-vector_joomla_web
```

Размер snt-vector_joomla_web 164Mb

mysql
-----

У провайдер sprinthost.ru MySQL version 5.7.22-22
```sql
SELECT VERSION();
# Creeate if not exists
CREATE DATABASE IF NOT EXISTS a0236142_app_joomla_0 CHARACTER SET utf8 COLLATE utf8_unicode_ci;
```
База данных a0236142_app_joomla_0

Если монтировать каталог для хранения баз в /var/lib/mysql
то не создается база, указанная в MYSQL_DATABASE.
Если его не монтировать, то база создается.
Выяснил, что в docker-machine mysql не работаеть с примонтированной
через VirtualBox папкой - ругается на права.
Пришлось отказаться от сохранения данных и сделать два скрипта для
оперативной загрузки данных в рабочий образ.
```bash
./restore_db.sh
./dump_db.sh
```

joomla
------
Deployment by FTP


```bash

```