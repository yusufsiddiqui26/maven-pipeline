#!/usr/bin/env bash

echo "#############################################"
echo "######     Building jar file           ######"
echo "#############################################"

WORKSPACE=/home/yusuf/jenkins_project/jenkins_data/jenkins_home/workspace/docker-maven-pipeline

# example parameter # mvn -B -DskipTests clean package
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

#cp ../../java-app/target/my-app-1.0-SNAPSHOT.jar .

