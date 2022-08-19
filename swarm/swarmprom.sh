#!/usr/bin/env bash

export ADMIN_USER=admin
export ADMIN_PASSWORD=adminadmin
export HASHED_PASSWORD=$(openssl passwd -apr1 $ADMIN_PASSWORD)
export DOMAIN=dgs.net

export SLACK_URL=https://hooks.slack.com/services/TOKEN
export SLACK_CHANNEL=devops-alerts
export SLACK_USER=alertmanager

git clone --single-branch https://github.com/stefanprodan/swarmprom.git
cd swarmprom
cp ../swarmprom.yml .
docker stack deploy -c swarmprom.yml swarmprom

# Add new domain to /etc/hosts
if ! grep -q "$DOMAIN" /etc/hosts; then
  echo "Add 127.0.0.1 ${DOMAIN} to /etc/hosts"
  echo "127.0.0.1 ${DOMAIN}" | sudo tee -a /etc/hosts
fi