#!/bin/bash

# define several variables for service control.
CORE_COMPONENT_HOME=$(cd "$(dirname "$0")/../"; pwd)
CORE_COMPONENT_CONF=${CORE_COMPONENT_HOME}/conf
CORE_COMPONENT_LIB=${CORE_COMPONENT_HOME}/lib
#CORE_USER={{ core_service_user.name }}
CORE_USER=ubuntu
#COMPONENT_NAME="{{ dubbo_component_name }}"
COMPONENT_NAME=org-mgmt
#JAVA_HOME={{ core_service_java_home|default('') }}
if [ -z ${JAVA_HOME} ] && [ -f "/usr/bin/java" ];then
  JAVA_EXEC="nohup /usr/bin/java"
else
  JAVA_EXEC="nohup ${JAVA_HOME}/bin/java"
fi

if [ -n ${JVM_ARGS} ];then
  JVM_ARGS="-Xmx1G -Xms1G"
fi

if [ `whoami` != ${CORE_USER} ];then
   JAVA_EXEC="sudo -u ${CORE_USER} ${JAVA_EXEC}"
fi

CLASSPATH=$CLASSPATH":${CORE_COMPONENT_CONF}"
# Add jar files to variable CLASSPATH
for jar_path in `ls ${CORE_COMPONENT_LIB}/*.jar`
do
	 CLASSPATH=$CLASSPATH:${jar_path}
done

# define service control functions.
status(){
	COUNT=`ps --no-heading -C java -f --width 1000 |grep 'proc_name='${COMPONENT_NAME} | awk '{print $2}' | wc -l`
	if [ $COUNT -lt 1 ];then
		echo "Service "${COMPONENT_NAME}" is not running."
		exit 1
	else
		PIDS=`ps --no-heading -C java -f --width 1000 |grep 'proc_name='${COMPONENT_NAME} | awk '{print $2}'`
		echo "Service "${COMPONENT_NAME}" is running.Pid: "$PIDS
		exit 0
	fi
}

start(){
	PIDS=`ps -ef|grep 'proc_name='${COMPONENT_NAME} |grep -v grep|awk '{print $2}'`
	if [ ! -z $PIDS ];then
		echo "INFO: The service "${COMPONENT_NAME}" is running!"
		exit 0
	fi
	# change directory to component's home.
    cd ${CORE_COMPONENT_HOME}

	${JAVA_EXEC} -server -Dproc_name=${COMPONENT_NAME} -Ddubbo.properties.file=${CORE_COMPONENT_CONF}/dubbo.properties ${JVM_ARGS} \
	             -cp $CLASSPATH com.alibaba.dubbo.container.Main > /dev/null 2>&1 &

	echo -e "Starting service "${COMPONENT_NAME}" ...\c"
	
	COUNT=0
	MAX_COUNT=0
	while [[ $COUNT -lt 1 ]]; do
		echo -e '.\c'
		sleep 1
		COUNT=`ps --no-heading -C java -f --width 1000 |grep 'proc_name='${COMPONENT_NAME} | awk '{print $2}' | wc -l`
		if [ $COUNT -gt 0 ]; then
			break
		fi
		((MAX_COUNT++))
		if [ ${MAX_COUNT} -eq 30 ];then
			echo "Fail!"
			exit 1
		fi
	done
	echo "OK!"
}

stop(){
	PIDS=`ps -ef|grep 'proc_name='${COMPONENT_NAME} | grep -v grep|awk '{print $2}'`
	echo -e 'Stopping the service '${COMPONENT_NAME}' ...\c'
	for pid in $PIDS; do
		kill $pid > /dev/null 2>&1
	done
	COUNT=0
	while [[ $COUNT -lt 1 ]]; do
		echo -e ".\c"
		sleep 1
		COUNT=1
		for PID in $PIDS ; do
			PID_EXIST=`ps --no-heading -p $PID`
			if [ -n "$PID_EXIST" ]; then
				COUNT=0
				kill $PID > /dev/null 2>&1
				break
			fi
		done
	done
	echo "OK!"
}

# control service based on the first arg.
case $1 in
	start )
		start;;
	stop )
		stop;;
	restart )
		stop
		sleep 1
		start;;
	status )
		status;;
	* )
		echo "Usage: $0 (start|stop|restart|status)";;
esac