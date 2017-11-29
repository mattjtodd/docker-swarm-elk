#!/usr/bin/env bash

docker config create metricbeat.yml metricbeat/metricbeat.yml

docker stack deploy -c docker-compose.yml "elasticserch$1"

