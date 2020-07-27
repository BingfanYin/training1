#!/bin/sh

docker network create tmp-net > log.txt 2>&1
docker container rm -f grp2-web >> log.txt 2>&1
docker run --rm -d --name grp2-web -p 443:8123  --net tmp-net -e WEB=$1 $2 >> log.txt 2>&1
