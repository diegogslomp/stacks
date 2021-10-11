#!/bin/bash
set -ex
docker stack deploy -c portainer-agent-stack.yml portainer