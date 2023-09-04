#!/usr/bin/env bash

# Get the Swarm node ID of this node and store it in an environment variable
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')

export DOMAIN=thelounge.dgs.net

# Create a tag in this node, so that the data used by The Lounge is always
# deployed to the same node and uses the existing volume
docker node update --label-add thelounge.thelounge-data=true $NODE_ID

docker stack deploy -c thelounge.yml thelounge

# Add new domain to /etc/hosts
if ! grep -q "$DOMAIN" /etc/hosts; then
  echo "Add 127.0.0.1 ${DOMAIN} to /etc/hosts"
  echo "127.0.0.1 ${DOMAIN}" | sudo tee -a /etc/hosts
fi
