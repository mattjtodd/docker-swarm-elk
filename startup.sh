#!/usr/bin/env bash

docker config create metricbeat-conf metricbeat/metricbeat.yml
docker config create logstash-template logstash/logstash-template.json 
docker config create logstash-conf logstash/logstash.conf
docker config create nginx-conf nginx/nginx.conf

docker stack deploy -c docker-compose.yml "elasticsearch$1"

