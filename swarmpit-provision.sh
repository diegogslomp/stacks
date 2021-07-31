#!/usr/bin/env sh

export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add swarmpit.db-data=true $NODE_ID
docker node update --label-add swarmpit.influx-data=true $NODE_ID

export DOMAIN=swarmpit.dgs.net
docker stack deploy -c swarmpit.yml swarmpit