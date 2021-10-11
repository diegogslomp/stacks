#!/usr/bin/env sh
#
# Swarprom docker swarm
#
# prometheus (metrics database) http://<swarm-ip>:9090
# grafana (visualize metrics) http://<swarm-ip>:3000
# node-exporter (host metrics collector)
# cadvisor (containers metrics collector)
# dockerd-exporter (Docker daemon metrics collector, requires Docker experimental metrics-addr to be enabled)
# alertmanager (alerts dispatcher) http://<swarm-ip>:9093
# unsee (alert manager dashboard) http://<swarm-ip>:9094
# caddy (reverse proxy and basic auth provider for prometheus, alertmanager and unsee)
#
# Source: https://github.com/stefanprodan/swarmprom

# Exit if any error and print all commands
set -ex

# Download swarmprom repo
cd ~/repos
git clone https://github.com/stefanprodan/swarmprom.git || true
cd swarmprom

# Swarm deploy
ADMIN_USER=admin \
ADMIN_PASSWORD=adminpass \
SLACK_URL=https://hooks.slack.com/services/TOKEN \
SLACK_CHANNEL=devops-alerts \
SLACK_USER=alertmanager \
docker stack deploy -c docker-compose.yml mon