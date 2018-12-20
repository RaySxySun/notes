#! /bin/bash

#################################################################################
# USAGE: $1: input file, e.g. /etc/hosts 
# --add-host="hub.ecf-poc.com core-service-1":127.0.0.1
# --add-host="localhost.localdomain localhost4 localhost4.localdomain4":127.0.0.1
#################################################################################
add_host_opt() {
   hostsOpts=$(cat $1 |  grep -v "^[#|:]" | grep "\." | awk '{print " --add-host=\""substr($0, index($0,$3))"\":"$1}')
   echo $hostsOpts
}

#################################################################################
# USAGE: $1: docker container name
#################################################################################
stop_remove_container() {
  exec_no_quit docker stop $1 2>/dev/null
  exec_no_quit docker rm $1 2>/dev/null
}

#################################################################################
# USAGE: $1: docker image full path with version
#	 $@: docker options 
#################################################################################
build_no_cache(){
  IMAGE_FULL_PATH=$1
  shift
  OPTS=$@
  exec_or_quit docker build --no-cache ${OPTS} -t ${IMAGE_FULL_PATH} .
}


#################################################################################
# USAGE: $1: docker image full path with version
#	 $@: docker options 
#################################################################################
patch_with_cache(){
  IMAGE_FULL_PATH=$1
  DOCKER_FILE=$2
  shift 2
  OPTS=$@
  exec_or_quit docker build ${OPTS} -t ${IMAGE_FULL_PATH} -f ${DOCKER_FILE=$2} .
}

#################################################################################
# USAGE: NO ARGS
#################################################################################
clean_danglingImage() {
  danglingImage=`echo $(docker images -q -f dangling=true)`
  [[ X"$danglingImage" != X"" ]] && exec_no_quit docker rmi -f $danglingImage 2>/dev/null
}

