#!/usr/bin/env bash

echo "maven-project" > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $DOCKER_USER >> /tmp/.auth
echo $DOCKER_PASS >> /tmp/.auth

scp /tmp/.auth yusuf@192.168.0.91:/tmp/.auth
scp ./jenkins/deploy/docker-compose.yml yusuf@192.168.0.91:~/maven/
scp ./jenkins/deploy/publish.sh yusuf@192.168.0.91:~/maven/

ssh yusuf@192.168.0.91 "bash ~/maven/publish.sh"
