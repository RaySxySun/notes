#! /bin/bash
source ./config/env.conf
source ./common/common.sh
exec_or_quit docker exec -it ${CONTAINER_NAME} bash

