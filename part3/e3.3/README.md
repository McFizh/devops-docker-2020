# Docker builder usage

set following variables in docker-compose

GIT_REPO=https://github.com/abc/def

Repo, which you want to build the project from

CONTAINER_NAME=username/project_name:latest

Tag for container (the above format, if you want to push to docker hub)

PUSH_TO_DOCKER=true

Set to false, if you don't want to push to docker hub

Run the builder with command:

docker-compose up
