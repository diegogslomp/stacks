#!/usr/bin/env bash

export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add swarmpit.db-data=true $NODE_ID
docker node update --label-add swarmpit.influx-data=true $NODE_ID

export DOMAIN=swarmpit.dgs.net
docker stack deploy -c swarmpit.yml swarmpit

# Add new domain to /etc/hosts
if ! grep -q "$DOMAIN" /etc/hosts; then
  echo "Add 127.0.0.1 ${DOMAIN} to /etc/hosts"
  echo "127.0.0.1 ${DOMAIN}" | sudo tee -a /etc/hosts
fi