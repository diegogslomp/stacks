#!/usr/bin/env bash

docker run \
    -p 9090:9090 \
    -v ~/repos/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus