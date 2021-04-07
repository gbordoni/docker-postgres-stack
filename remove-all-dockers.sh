#!/bin/sh

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -aq)
docker rmi $(docker images --format "{{.Repository}}")
docker rmi $(docker images -aq)
docker network prune -f
docker volume prune
