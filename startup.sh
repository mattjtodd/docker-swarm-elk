#!/usr/bin/env bash

docker config create metricbeat.yml metricbeat/metricbeat.yml
docker config create logstash-template logstash/logstash-template.json 
docker config create logstash-conf logstash/logstash.conf

docker stack deploy -c docker-compose.yml "elasticserch$1"

