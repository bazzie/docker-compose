#! /bin/bash

export $LOGSTASH_IP=`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mystack_logstash_1`
docker-compose up -d