#!/usr/bin/env bash

echo "#############################################"
echo "######     Testing the jar file        ######"
echo "#############################################"

WORKSPACE=/home/yusuf/jenkins_project/jenkins_data/jenkins_home/workspace/docker-maven-pipeline

# example parameter # mvn test
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

