#!/usr/bin/env bash
docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ='America/Sao_Paulo' \
  -v homeassistant_config:/config \
  -p 8123:8123 \
  ghcr.io/home-assistant/home-assistant:stable