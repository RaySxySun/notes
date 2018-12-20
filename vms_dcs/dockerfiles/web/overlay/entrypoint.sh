#! /bin/bash

RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
MAGENTA='\e[1;35m'
CYAN='\e[1;36m'
NC='\e[0m'

print_info() {
  echo -e "  $CYAN[INFO] $@$NC";
}

print_error() {
  echo -e "$RED[ERROR] $@$NC";
}

print_success() {
  echo -e "$GREEN[ERROR] $@$NC";
}

print_title() {
  title=$1
  msg=$2
  echo -e "$YELLOW[$1]$NC $MAGENTA$2$NC";
}

exec_or_quit() {
  print_info "  $> $@"
  $@
  [[ ! $? -eq 0 ]] && echo "[ERROR] fail to execute: $@"&& exit 255
}



PROJ_NAME=`basename $PROJ_HOME`
TARGET_PID=`ps -ef | grep $PROJ_NAME | grep -v "grep" | awk '{print $2}'`
[[ -n $TARGET_PID ]] && exec_or_quit "kill -9 $TARGET_PID"


if [ X"$1" = X"start" ]; then
  print_title "Step 1" "append /etc/hosts with /tmp/hosts && start $PROJ_NAME"
  print_info "  $> cat /tmp/hosts >> /etc/hosts"
  `cat /tmp/hosts >> /etc/hosts`
  #CMD="catalina.sh run"
  #exec_or_quit $CMD
elif [ X"$1" = X"debug" ]; then
  print_title "Step 1" "debug project $PROJ_NAME"
  CMD="$PROJ_HOME/bin/service_ctl.sh debug"
  exec_or_quit $CMD
else
  print_title "Usage" "/entrypoint.sh [start|debug]"
  exit 0  
fi

#TARGET_PID=`ps -ef | grep $PROJ_NAME | grep -v "grep" | awk '{print $2}'`

#if [ -z $TARGET_PID ]; then 
#  print_error "no $PROJ_NAM. fail to start arthas monitor." 
#  exit 0
#else
#  print_title "Step 2" "start arthas monitor"
#  CMD="$JAVA_HOME/bin/java -jar $AS_HOME/arthas-boot.jar $TARGET_PID &"
#  exec_or_quit $CMD
#fi
exit 0


