#!/bin/sh
if [ -z "$GIT_REPO" ]; then
  echo "GIT_REPO env variable not set"
  exit
fi

if [ -z "$CONTAINER_NAME" ]; then
  echo "CONTAINER NAME env variable not set"
  exit
fi

git clone $GIT_REPO repo
cd repo

if [ ! -f "Dockerfile" ]; then
  echo "Dockerfile not found"
  exit
fi

docker build -t $CONTAINER_NAME .

if [ "$PUSH_TO_DOCKER" = true ]; then
  docker push $CONTAINER_NAME
fi
