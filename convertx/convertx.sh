#!/usr/bin/env bash

set -euo pipefail

docker run -p 3000:3000 -v ./data:/app/data ghcr.io/c4illin/convertx
