#!/usr/bin/env bash

export NAME=$(awk 'NR==1{print}' /tmp/.auth)
export BUILD_TAG=$(awk 'NR==2{print}' /tmp/.auth)
export DOCKER_USER=$(awk 'NR==3{print}' /tmp/.auth)
export DOCKER_PASS=$(awk 'NR==4{print}' /tmp/.auth)

echo "###### Docker login" & \

docker login -u $DOCKER_USER -p $DOCKER_PASS && \

cd ~/maven/ && docker-compose up -d && \

echo "###### Docker logout"  && \

docker logout   && \

rm -f /tmp/.auth && \
rm -f ~/publish.sh
