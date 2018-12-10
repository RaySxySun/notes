#!/bin/bash

CMD="ssh -N "
BASTION="jlab"
services=( \
	"9200:trip-traffic-es-1:9200" \
	"9300:trip-traffic-es-1:9300" \
	"1523:traffic-db-1:1523" \
	"6379:redis-1:6379"\
	"27091:uv-profile-1:27091"\
	"8180:192.168.3.4:8180"\
	"8050:reactor-manager.fnjqymq2ugqupa00l35tupslaf.ax.internal.cloudapp.net:8050"\
	"1884:192.168.2.133:1884"\
	"27230:192.168.3.68:27230"\
	"9092:kafka-1:9092"\
	"9091:tds-reader-1:9091" \
	"8800:api-gateway-1:8000" \
	"8801:trip-mgmt-1:8081" \
	"9042:datastore-cassandra-1:9042" \
	"1533:mgmt-db-1:1523" \
	)


start() {
  ssh_args=""
  for i in "${services[@]}"
  do
    ssh_args="$ssh_args-L 0.0.0.0:$i "

  done

  #echo $CMD $ssh_args $BASTION

  $CMD $ssh_args $BASTION & 
  if [ $? -eq 0 ]; then
    echo "tunnels have been estabilshed sucessfully!"
    echo $! > /tmp/tunnel_cli.pid
  else
    echo "fail to start ssh tunnel!"
  fi
}

stop() {
  cat /tmp/tunnel_cli.pid | xargs kill -9 2>/dev/null
  echo "" > /tmp/tunnel_cli.pid
  echo "tunnels have been stopped sucessfully!"

}

status() {
  pid=$(cat /tmp/tunnel_cli.pid)
  if [ -z $pid ]; then
    echo "tunnel service is NOT running"
    return
  fi

  ret=$(ps -p $pid | wc -l)
  if [ $ret -ge 2 ]; then
    echo "tunnel service is running [pid: $pid]"
  else
    echo "tunnel service is NOT running"
  fi
}

case X"$1" in
  Xstart)
    echo "Start tunneling services ..."
    start
    ;;
  Xstop)
    echo "Stop tunneling services ..."
    stop
    ;;
  Xstatus)
    status
    ;;
  *)
    echo "Usage: tunnel_cli.sh [start|stop|status]"
    ;;
esac


#if [ X"$1" = "Xstart" ]; then
#  echo "Start tunneling services ..."
#  start

#elif [ X"$1" = "Xstop" ]; then
#  echo "Stop tunneling services ..."
#  stop

#elif [ X"$1" = "Xstatus" ]; then
#  status

#else
# echo "Usage: tunnel_cli.sh [start|stop|status]"
#fi




#ssh -N -L 9200:trip-traffic-es-1:9200 jlab &

