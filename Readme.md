sny-vector based on Joomla Framevork
====================================

sprinthost.ru

mysql
-----

MySQL version 5.7.22-22
```sql
SELECT VERSION();
# Creeate if not exists
CREATE DATABASE IF NOT EXISTS a0236142_app_joomla_0 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

```
База данных a0236142_app_joomla_0

Creating database dumps on docker
```bash
# backup database a0236142_app_joomla_0
docker exec snt-vector_joomla_mysql_1 sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" a0236142_app_joomla_0 > /backup/a0236142_app_joomla_0.sql'
# restore from backup
docker exec snt-vector_joomla_mysql_1 sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" a0236142_app_joomla_0 < /backup/a0236142_app_joomla_0.sql'
```

joomla
------
Deployment by FTP


```bash

```