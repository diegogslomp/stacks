#!/usr/bin/env sh

# Get the Swarm node ID of this node and store it in an environment variable
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')

# Create a tag in this node, so that Portainer is always deployed to the same node and uses the existing volume
docker node update --label-add portainer.portainer-data=true $NODE_ID

# Create an environment variable with the domain where you want to access your Portainer instance
export DOMAIN=portainer.dgs.net

docker stack deploy -c portainer.yml portainer

