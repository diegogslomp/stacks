#!/usr/bin/env sh

export ADMIN_USER=admin
export ADMIN_PASSWORD=adminadmin
export HASHED_PASSWORD=$(openssl passwd -apr1 $ADMIN_PASSWORD)
export DOMAIN=dgs.net

export SLACK_URL=https://hooks.slack.com/services/TOKEN
export SLACK_CHANNEL=devops-alerts
export SLACK_USER=alertmanager

git clone https://github.com/stefanprodan/swarmprom.git
cd swarmprom
cp ../swarmprom.yml .
docker stack deploy -c swarmprom.yml swarmprom