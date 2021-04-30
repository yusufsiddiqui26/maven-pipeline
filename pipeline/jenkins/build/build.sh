#!/usr/bin/env bash

##########   Copy the JAR file

cp java-app/target/*.jar jenkins/build/

########  Building the Images

docker-compose -f jenkins/build/docker-compose-build.yml build --no-cache

