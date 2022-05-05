#!/usr/bin/env bash

docker pull dpage/pgadmin4
docker stop pgadmin
docker rm pgadmin
docker run -p 8484:80 \
    -e 'PGADMIN_DEFAULT_EMAIL=user@domain.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=SuperSecret' \
    -e 'PGADMIN_LISTEN_ADDRESS=0.0.0.0' \
    -v pgadmin:/var/lib/pgadmin \
    --name pgadmin \
    -d dpage/pgadmin4
