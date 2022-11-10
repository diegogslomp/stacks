#!/usr/bin/env bash

docker run -d \
    -p 9090:9090 \
    -v ~/repos/stacks/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
    --name prometheus prom/prometheus
