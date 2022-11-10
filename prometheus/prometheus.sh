#!/usr/bin/env bash

docker run \
    -p 9090:9090 \
    -v ~/repos/stacks/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus