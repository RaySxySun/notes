#! /bin/bash

YELLOW='\e[1;33m' 
MAGENTA='\e[1;35m'
CYAN='\e[1;36m'
NC='\e[0m'

print_info() {
  echo -e "  $CYAN[INFO] $@$NC";
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


if [ X"$1" = X"start" ]; then
  exec_or_quit "$PROJ_HOME/bin/service_ctl.sh start"
elif [ X"$1" = X"debug" ]; then
  exec_or_quit "$PROJ_HOME/bin/service_ctl.sh debug"
else
  print_title "Usage" "/entrypoint.sh [start|debug]"
fi

exit 0


