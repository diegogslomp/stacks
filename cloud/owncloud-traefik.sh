#!/usr/bin/env sh

export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add owncloud.owncloud-files=true $NODE_ID
docker node update --label-add owncloud.owncloud-mysql=true $NODE_ID
docker node update --label-add owncloud.owncloud-redis=true $NODE_ID

export OWNCLOUD_VERSION=10.7
export OWNCLOUD_DOMAIN=owncloud.dgs.net
export ADMIN_USERNAME=admin
export ADMIN_PASSWORD=admin

docker stack deploy -c owncloud.yml owncloud
