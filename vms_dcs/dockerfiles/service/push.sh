#!/usr/bin/env bash

source ./config/env.conf
source ./common/common.sh

exec_or_quit docker push ${IMAGE_FULL_PATH}
