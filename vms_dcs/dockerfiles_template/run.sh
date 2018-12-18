#! /bin/bash
source ./config/env.conf
CUR_DIR=`pwd`

RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
MAGENTA='\e[1;35m'
CYAN='\e[1;36m'
NC='\e[0m'

print_info() {
    echo -e "  $CYAN[INFO] $@$NC";
}

print_error() {
    echo -e "$RED[ERROR] $@$NC";
}

print_success() {
    echo -e "$GREEN[ERROR] $@$NC";
}

print_title() {
    title=$1
    msg=$2
    echo -e "$YELLOW[$1]$NC $MAGENTA$2$NC";
}

print_usage() {
    echo -e "$RED[Usage]: ./run.sh [local|update] $NC";
    exit 255
}

[[ X"$1" != X"local" ]] && [[ X"$1" != X"update" ]] && print_usage

docker stop ${CONTAINER_NAME} 2>/dev/null
docker rm ${CONTAINER_NAME} 2>/dev/null
[[ X"$1" = X"update" ]] && docker pull ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION}
echo "docker run -idt -e PROJ_HOME=${PROJ_HOME} -e AS_HOME=${AS_HOME} --name ${CONTAINER_NAME} -v ${CUR_DIR}/log/:/var/log/ecf/core-service/${APP_NAME}/ ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION}"
docker run -idt -e PROJ_HOME=${PROJ_HOME} -e AS_HOME=${AS_HOME} --name ${CONTAINER_NAME} -v ${CUR_DIR}/log/:/var/log/ecf/core-service/${APP_NAME}/ ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION}

