#!/usr/bin/env bash

source ./config/env.conf

echo "docker push ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION}"
docker push ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION}

# docker run -idt user-service:latest --mysql.address=192.168.56.102
