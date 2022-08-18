#!/usr/bin/env sh

# Create a network that will be shared with Traefik and the containers that should be accessible from the outside
docker network create --driver=overlay traefik-public

# Get the Swarm node ID of this node and store it in an environment variable
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')

# Create a tag in this node, so that Traefik is always deployed to the same node and uses the same volume
docker node update --label-add traefik-public.traefik-public-certificates=true $NODE_ID

# User credentials
export USERNAME=admin
export EMAIL=admin@dgs.net
export PASSWORD=admin

# Use openssl to generate the "hashed" version of the password
export HASHED_PASSWORD=$(openssl passwd -apr1 $PASSWORD)
export DOMAIN=traefik.dgs.net

docker stack deploy -c traefik.yml traefik

