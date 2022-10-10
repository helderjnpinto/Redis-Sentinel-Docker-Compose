#!/bin/sh
 
redis-cli -h 172.16.100.1 -p 6379
echo $REDIS_MASTER_PASSWORD
sleep 10
config set masterauth $REDIS_MASTER_PASSWORD
redis-server --slaveof 172.16.100.1 6379