#!/usr/bin/env bash
source config/env.conf
source ./common/common.sh
source ./common/fun4docker.sh


print_title  "STEP 1" "Validate Environment Variables of [./config/env.conf::REQUIRED_ENV_NAMES]"
validate_env $REQUIRED_ENV_NAMES

print_title  "STEP 1" "Validate Environment Variables of [./config/env.conf::REQUIRED_ENV_NAMES]"
patch_with_cache ${IMAGE_FULL_PATH} "DockerfilePatch" "--build-arg IMAGE_FULL_PATH=${IMAGE_FULL_PATH}"
#docker build --build-arg IMAGE_FULL_PATH=${IMAGE_FULL_PATH} -t ${IMAGE_FULL_PATH} -f DockerfilePatch .
