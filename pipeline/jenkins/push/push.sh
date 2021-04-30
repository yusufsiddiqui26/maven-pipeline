#!/usr/bin/env bash

IMAGE="maven-project"

echo "######### Docker hub login"
docker login -u $DOCKER_USER -p $DOCKER_PASS

echo "########### Tagging Image"

docker tag $IMAGE:$BUILD_TAG $DOCKER_USER/$IMAGE:$BUILD_TAG

echo "########## Pushing Image"

docker push $DOCKER_USER/$IMAGE:$BUILD_TAG

echo "##### Logout from Docker hub"
docker logout
