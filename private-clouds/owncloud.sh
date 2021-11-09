#!/bin/bash

export OWNCLOUD_VERSION=10.8
export OWNCLOUD_DOMAIN=localhost:8080
export ADMIN_USERNAME=admin
export ADMIN_PASSWORD=admin
export HTTP_PORT=8080

docker stack deploy -c owncloud.yml owncloud
