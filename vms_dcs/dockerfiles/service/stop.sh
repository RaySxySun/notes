#! /bin/bash
source ./config/env.conf
source ./common/common.sh

exec_no_quit docker stop ${CONTAINER_NAME}


