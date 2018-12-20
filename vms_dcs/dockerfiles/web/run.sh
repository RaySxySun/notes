#! /bin/bash
source ./config/env.conf
source ./common/common.sh
source ./common/fun4docker.sh

CUR_DIR=`pwd`

print_usage() {
    echo -e "$RED[Usage]: ./run.sh [local|update] $NC";
    exit 255
}

[[ X"$1" != X"local" ]] && [[ X"$1" != X"update" ]] && print_usage

# 1. validate required environment names
print_title  "STEP 1" "Validate Environment Variables of [./config/env.conf::REQUIRED_ENV_NAMES]"
validate_env $REQUIRED_ENV_NAMES

# 1. clean up
print_title  "STEP 1" "Clean up"
exec_no_quit docker stop ${CONTAINER_NAME} 2>/dev/null
exec_no_quit docker rm ${CONTAINER_NAME} 2>/dev/null

# 2. check update
print_title  "STEP 2" "Check update"
[[ X"$1" = X"update" ]] && exec_or_quit docker pull ${IMAGE_FULL_PATH}

# 3. run container
print_title  "STEP 3" "Bring up container"
hostsOpts=$(add_host_opt '/etc/hosts')
exec_or_quit docker run $hostsOpts -p 8085:8080 -idt --name ${CONTAINER_NAME} -v ${CUR_DIR}/log/:${APP_LOG}/ ${IMAGE_FULL_PATH}

print_title  "Complete" "Container \"${CONTAINER_NAME}\" is running. login it with the command: ./attach.sh"


