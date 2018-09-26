#!/usr/bin/env bash
# default value for first comand line argument - backup source
BACKUP_FILE=${1:-/backup/a0236142_app_joomla_0.sql}
CMD="exec mysql -uroot -p\"\$MYSQL_ROOT_PASSWORD\" a0236142_app_joomla_0 < $BACKUP_FILE"
# echo $CMD
eval $(docker-machine env default)
echo Restore from $BACKUP_FILE
docker exec snt-vector_joomla_mysql_1 sh -c "$CMD"
