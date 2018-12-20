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
#exec_or_quit "unzip -qo ./overlay/arthas-packaging-bin.zip -d ./as"
exec_or_quit "cp -rf overlay/conf $APP_NAME/."
exec_or_quit "cp -rf overlay/bin $APP_NAME/."

print_title  "STEP 4" "Create Image"
build_no_cache ${IMAGE_FULL_PATH} " --build-arg APP_NAME=$APP_NAME --build-arg PROJ_HOME=$PROJ_HOME --build-arg AS_HOME=$AS_HOME --build-arg BASE_IMAGE_REPO=$BASE_IMAGE_REPO "

print_title  "STEP 5" "Cleanup Cache"
clean_danglingImage
exec_no_quit "rm -rf ./$APP_NAME" 
#exec_no_quit "rm -rf ./as" 

print_title  "Complete" "Successfully Create Image"

exit 0

