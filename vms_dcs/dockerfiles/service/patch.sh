#!/usr/bin/env bash
source ./config/env.conf

echo "docker build --build-arg PROJ_IMAGE_REPO=${PROJ_IMAGE_REPO} --build-arg PROJ_HOME=${PROJ_HOME} --build-arg APP_NAME=${APP_NAME} --build-arg IMAGE_VERSION=${IMAGE_VERSION} -t ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION} -f DockerfilePatch ."
docker build --build-arg PROJ_IMAGE_REPO=${PROJ_IMAGE_REPO} --build-arg PROJ_HOME=${PROJ_HOME} --build-arg APP_NAME=${APP_NAME} --build-arg IMAGE_VERSION=${IMAGE_VERSION} -t ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION} -f DockerfilePatch .

#docker build --build-arg IMAGE_REPO=${IMAGE_REPO} --build-arg IMAGE_VERSION=${IMAGE_VERSION} -t ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION} -f DockerfilePatch .
