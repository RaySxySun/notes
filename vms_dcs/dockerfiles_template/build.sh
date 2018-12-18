#!/usr/bin/env bash

source ./config/env.conf

APP_NAME=${APP_NAME// /}

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

stop_container() {
  print_info "  $> docker stop ${CONTAINER_NAME} 2>/dev/null"
  docker stop ${CONTAINER_NAME} 2>/dev/null
  print_info "  $> docker rm ${CONTAINER_NAME} 2>/dev/null"
  docker rm ${CONTAINER_NAME} 2>/dev/null
}

build() {
  #print_info "  $> docker build --build-arg BASE_IMAGE_REPO=${BASE_IMAGE_REPO} -t ${IMAGE_REPO}/micro-service/fms-org-mgmt:${IMAGE_VERSION} ."
  exec_or_quit "docker build --no-cache --build-arg BASE_IMAGE_REPO=${BASE_IMAGE_REPO} --build-arg PROJ_HOME=${PROJ_HOME} --build-arg APP_NAME=${APP_NAME} --build-arg AS_HOME=${AS_HOME} -t ${PROJ_IMAGE_REPO}/${CONTAINER_NAME}:${IMAGE_VERSION} ."
  #exec_or_quit "docker build --build-arg BASE_IMAGE_REPO=${BASE_IMAGE_REPO} -t ${IMAGE_REPO}/micro-service/fms-org-mgmt:${IMAGE_VERSION} ."
}

clean_up() {
  
  [[ -z $APP_NAME ]] && print_error "$APP_NAME is empty. please sepcify a app name in ./config/env.conf" && return 0
  exec_or_quit "rm -rf ./$APP_NAME"
  #exec_or_quit "docker images | grep 'none' | awk '{print $3}' | xargs docker rmi - 2>/dev/null"
  danglingImage=`echo $(docker images -q -f dangling=true)`
  #echo danglingImage=$danglingImage
  if [ X"$danglingImage" != X"" ]; then  
    print_info "  $> docker rmi $danglingImage 2>/dev/null"
    docker rmi -f $danglingImage 2>/dev/null
  fi
}

exec_or_quit() {
  print_info "  $> $@"
  $@
  [[ ! $? -eq 0 ]] && echo "[ERROR] fail to execute: $@"&& exit 255
}



print_title  "STEP 1" "Stop & Remove Container"
stop_container
# check if the target package org-mgmt.tar.gz exist
if [ -f "./${APP_NAME}.tar.gz" ]; then
  print_title  "STEP 1" "Decompress & Replace Configuration"
  #exec_or_quit "tar -xvf ./org-mgmt.tar.gz"
  exec_or_quit "tar -xf ./${APP_NAME}.tar.gz"
  exec_or_quit "cp -rf overlay/conf $APP_NAME/."
  exec_or_quit "cp -rf overlay/bin $APP_NAME/."
  print_title  "STEP 2" "Create Image"
  build
  print_title  "STEP 3" "Cleanup Cache"
  clean_up
  print_title  "Complete" "Successfully Create Image"
else
  print_title  "STEP 1" "GIT CLONE & MVN PACKAGE"
  #exec_or_quit rm -rf org-mgmt 
  #exec_or_quit git clone $GIT_REPO 
  #exec_or_quit cd org-mgmt
  #exec_or_quit git checkout $GIT_BRANCH
  #exec_or_quit git status
fi

exit 0

