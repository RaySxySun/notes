#!/bin/bash
docker stop ohray-zookeeper
docker rm ohray-zookeeper
docker run --net ohray-network --ip 172.19.0.3 --name ohray-zookeeper -p 2181:2181 --restart always -d zookeeper:3.5
