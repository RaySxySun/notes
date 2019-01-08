#! /bin/bash
shellPath=$(dirname "$0")
source $shellPath/config/env.conf
source $shellPath/common/common.sh
source $shellPath/common/fun4docker.sh

exec_or_quit docker exec -it ${CONTAINER_NAME} sh
