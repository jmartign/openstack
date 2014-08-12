#!/bin/bash

SERVICE=$1

MYSQL_DB=${MYSQL_DB:-"localhost"}
MYSQL_USER=${MYSQL_USER:-"admin"}
MYSQL_PASSWORD=${MYSQL_PASSWORD:-"password"}

HOST_NAME=${HOST_NAME:-"localhost"}
NOVA_DBPASS=${NOVA_DBPASS:-"password"}

echo "=> Creating ${SERVICE} database"
echo "=> DB ${MYSQL_DB}"
echo "=> User ${MYSQL_USER}"
echo "=> Password ${MYSQL_PASSWORD}"

mysql -h${MYSQL_DB} -u${MYSQL_USER} -p${MYSQL_PASSWORD}  -e "CREATE DATABASE ${SERVICE};"
mysql -h${MYSQL_DB} -u${MYSQL_USER} -p${MYSQL_PASSWORD}  -e "GRANT ALL PRIVILEGES ON ${SERVICE}.* TO '${SERVICE}'@'localhost' \
  IDENTIFIED BY '${NOVA_DBPASS}';"
mysql -h${MYSQL_DB} -u${MYSQL_USER} -p${MYSQL_PASSWORD}  -e "GRANT ALL PRIVILEGES ON ${SERVICE}.* TO '${SERVICE}'@'${HOST_NAME}' \
  IDENTIFIED BY '${NOVA_DBPASS}';"
mysql -h${MYSQL_DB} -u${MYSQL_USER} -p${MYSQL_PASSWORD}  -e "GRANT ALL PRIVILEGES ON ${SERVICE}.* TO '${SERVICE}'@'%' \
  IDENTIFIED BY '${NOVA_DBPASS}'"

echo "=> Done!"
