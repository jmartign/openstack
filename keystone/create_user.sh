#!/bin/bash

SERVICE=$1

HOST_NAME=${HOST_NAME:-$2}
KEYSTONE_PASS=${KEYSTONE_PASS:-"password"}
ADMIN_TOKEN=${ADMIN_TOKEN:-"password"}

export OS_SERVICE_ENDPOINT=http://${HOST_NAME}:35357/v2.0
export OS_SERVICE_TOKEN=${ADMIN_TOKEN}

echo "=> Creating ${SERVICE} user"
keystone user-create --name=${SERVICE} --pass=${KEYSTONE_PASS} --email=keystone@example.com 
keystone user-role-add --user=${SERVICE} --tenant=service --role=admin
echo "=> Done!"
