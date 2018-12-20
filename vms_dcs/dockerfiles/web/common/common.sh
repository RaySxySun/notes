
APP_NAME=${APP_NAME// /}

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
  eval $@
  [[ ! $? -eq 0 ]] && echo "[ERROR] fail to execute: $@"&& exit 255
}

exec_no_quit() {
  print_info "  $> $@"
  eval $@
}

#################################################################################
# USAGE: $1: String required varName names. e.g. REQUIRED_FIELD_NAMES="TARGET,URL"
#################################################################################
validate_env() {
  ENV_FIELD_NAMES=(${1//,/ })
  for varName in ${ENV_FIELD_NAMES[@]};
  do
    [[ -z ${!varName} ]] && print_error "The ENV \"${varName}\" is empty. please sepcify a app name in ./config/env.conf" && exit 255
  done

}
