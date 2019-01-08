#! /bin/bash

shellPath=$(dirname "$0")
source $shellPath/config/env.conf
source $shellPath/common/common.sh
source $shellPath/common/fun4docker.sh

CUR_DIR=`pwd`

print_usage() {
    echo -e "$RED[Usage]: ./run.sh [local|update] $NC";
    exit 255
}

[[ X"$1" != X"local" ]] && [[ X"$1" != X"update" ]] && print_usage

# 1. validate required environment names
print_title  "STEP 1" "Validate Environment Variables of [./config/env.conf::REQUIRED_ENV_NAMES]"
validate_env $REQUIRED_ENV_NAMES 

# 2. clean up
print_title  "STEP 1" "Clean up"
exec_no_quit docker stop ${CONTAINER_NAME} 2>/dev/null
exec_no_quit docker rm ${CONTAINER_NAME} 2>/dev/null 

# 3. check update 
print_title  "STEP 2" "Check update" 
[[ X"$1" = X"update" ]] && exec_or_quit docker pull ${IMAGE_FULL_PATH}

# 4. run container 
print_title  "STEP 4" "Bring up container"
portOpts=$(add_port_opt $CONTAINER_PORTS) 
volumnOpts=$(add_volumn_opt $CONTAINER_VOL) 
exec_or_quit docker run -itd $portOpts $volumnOpts --name ${CONTAINER_NAME} ${IMAGE_FULL_PATH}
#exec_or_quit docker run $portOpts $volumnOpts -idt --name ${CONTAINER_NAME} -v ${CUR_DIR}/log/:${APP_LOG}/ -v ${CUR_DIR}/data/:${APP_DATA}/ ${IMAGE_FULL_PATH}

print_title "Complete" "Container \"${CONTAINER_NAME}\" is running. login it with the command: ./attach.sh"
exit 0

