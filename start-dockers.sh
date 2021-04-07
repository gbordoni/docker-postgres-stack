#!/bin/sh

docker network create proxy
docker network create db
docker-compose -f traefik/docker-compose.yml up -d
docker-compose -f postgres/docker-compose.yml up -d
docker-compose -f pgadmin/docker-compose.yml up -d
