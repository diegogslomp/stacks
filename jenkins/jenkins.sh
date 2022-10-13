#!/usr/bin/env bash

docker run -d \
  -v jenkins_home:/var/jenkins_home \
  -p 8083:8080 \
  --restart unless-stopped \
  --name jenkins \
  jenkins/jenkins:lts-jdk11
