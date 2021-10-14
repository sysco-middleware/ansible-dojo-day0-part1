#!/bin/bash

DOCKER_CONTAINER_NAME="ansible-test"
ANSIBLE_TAGS="nginx"

cd ./challenge-06 && ansible-playbook -i env/local_docker webserver.yml --tags=$ANSIBLE_TAGS -vvv
docker stop $DOCKER_CONTAINER_NAME

docker rm $DOCKER_CONTAINER_NAME