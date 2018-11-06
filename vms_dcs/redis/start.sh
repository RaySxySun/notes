#!/bin/bash

cur_dir=`pwd`
docker stop ohray-redis
docker rm ohray-redis
docker run --net ohray-network -idt --name ohray-redis -v ${cur_dir}/conf/redis.conf:/etc/redis/redis_default.conf -v ${cur_dir}/data:/datadf -p 6379:6379 hub.c.163.com/public/redis:2.8.4
