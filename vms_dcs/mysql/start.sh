#!/bin/bash

cur_dir=`pwd`
docker stop ohray-mysql
docker rm ohray-mysql
docker run --net ohray-network --name ohray-mysql -v ${cur_dir}/conf:/etc/mysql/conf.d -v ${cur_dir}/data:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=111111 -d mysql:5.5
