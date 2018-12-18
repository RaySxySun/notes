#! /bin/bash
source ./config/env.conf
CUR_DIR=`pwd`
docker stop ${CONTAINER_NAME}
docker rm ${CONTAINER_NAME}

