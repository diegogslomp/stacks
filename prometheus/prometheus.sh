#!/usr/bin/env bash

docker run --network=host --detach \
    -v ~/repos/stacks/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
    -v ~/repos/stacks/prometheus/prometheus.rules.yml:/etc/prometheus/prometheus.rules.yml \
    -v prometheus_data:/prometheus \
    --name prometheus prom/prometheus
