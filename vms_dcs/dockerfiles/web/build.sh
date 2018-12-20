#!/usr/bin/env bash

source ./config/env.conf
source ./common/common.sh
source ./common/fun4docker.sh

print_title  "STEP 1" "Validate Environment Variables of [./config/env.conf::REQUIRED_ENV_NAMES]"
validate_env $REQUIRED_ENV_NAMES

print_title  "STEP 2" "Stop & Remove Container & cleanup"
stop_remove_container ${CONTAINER_NAME}

print_title  "STEP 3" "Decompress & Replace Configuration"
exec_or_quit unzip -qo ${TARGET} -d ./${APP_NAME}
exec_or_quit cp -rf ./overlay/conf/* ./fms-bff/WEB-INF/classes/.
exec_or_quit $REPLACE_CMD

print_title  "STEP 4" "Create Image"
build_no_cache ${IMAGE_FULL_PATH} " --build-arg APP_NAME=$APP_NAME "

print_title  "STEP 5" "Cleanup Cache"
clean_danglingImage
exec_no_quit "rm -rf ./$APP_NAME"

print_title  "Complete" "Successfully Create Image"
exit 0

