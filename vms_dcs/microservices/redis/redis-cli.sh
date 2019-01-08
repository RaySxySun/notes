#! /bin/bash

shellPath=$(dirname "$0")
source $shellPath/config/env.conf
source $shellPath/common/common.sh
source $shellPath/common/fun4docker.sh

CUR_DIR=`pwd`

print_usage() {
    echo -e "$RED[Usage]: ./redis-cli [HOST] [PORT] $NC";
    exit 255
}

HOST=$1
PORT=$2

if [ -z $HOST ] || [ -z $PORT ]
then
    HOST=$REDIS_CLI_DEFAULT_HOST
    PORT=$REDIS_CLI_DEFAULT_PORT
    print_info "No valid HOST and PORT input, to specify HOST and PORT by using './redis-cli [HOST] [PORT]'" 
    print_info "Connect the default host [$HOST] [$PORT]." 
else
    print_info "Connect the redis server: [$HOST]:[$PORT]."
fi

# connect redis server $HOST:$PORT 
exec_or_quit docker run -it --rm ${IMAGE_FULL_PATH} redis-cli -h $HOST -p $PORT
