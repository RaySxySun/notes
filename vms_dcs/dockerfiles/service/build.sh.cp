#!/usr/bin/env bash

source ./config/env.conf
source ./common/common.sh
source ./common/fun4docker.sh



print_title  "STEP 1" "Validate Environment Variables of [./config/env.conf::REQUIRED_ENV_NAMES]"
validate_env $REQUIRED_ENV_NAMES

print_title  "STEP 2" "Stop & Remove Container & cleanup"
stop_remove_container ${CONTAINER_NAME}

print_title  "STEP 3" "Decompress & Replace Configuration"
exec_or_quit "tar -xf ./${TARGET}"
exec_or_quit "cp -rf overlay/conf $APP_NAME/."
exec_or_quit "cp -rf overlay/bin $APP_NAME/."

print_title  "STEP 4" "Create Image"
build_no_cache ${IMAGE_FULL_PATH} " --build-arg APP_NAME=$APP_NAME --build-arg PROJ_HOME=$PROJ_HOME --build-arg AS_HOME=$AS_HOME --build-arg BASE_IMAGE_REPO=$BASE_IMAGE_REPO "

print_title  "STEP 5" "Cleanup Cache"
clean_danglingImage
exec_no_quit "rm -rf ./$APP_NAME" 

print_title  "Complete" "Successfully Create Image"

exit 0

APP_NAME=${APP_NAME// /}

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
  exec_or_quit rm -rf fms-org-mgmt 
  exec_or_quit git clone $GIT_REPO 
  exec_or_quit cd fms-org-mgmt
  exec_or_quit git checkout $GIT_BRANCH
  exec_or_quit git status
fi

exit 0

