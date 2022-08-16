#!/usr/bin/env bash
set -euo pipefail

docker run -it -d \
    --restart=unless-stopped \
    -p 1337:1337 \
    -v strapi:/srv/app \
    --name strapi strapi/strapi

docker logs strapi -f
