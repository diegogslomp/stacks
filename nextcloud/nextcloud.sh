#!/bin/bash
set -xeuo pipefail

docker run -d \
    -p 8080:80 \
    -v nextcloud:/var/www/html \
    --name nextcloud nextcloud
