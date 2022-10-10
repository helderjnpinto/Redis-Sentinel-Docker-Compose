#!/bin/sh
 
sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /redis/sentinel.conf

sed -i "s/\$REDIS_MASTER_PASSWORD/$REDIS_MASTER_PASSWORD/g" /redis/sentinel.conf
sed -i "s/\$REDIS_SENTINEL_USERNAME/$REDIS_SENTINEL_USERNAME/g" /redis/sentinel.conf
sed -i "s/\$REDIS_SENTINEL_PASSWORD/$REDIS_SENTINEL_PASSWORD/g" /redis/sentinel.conf
 
redis-server /redis/sentinel.conf --sentinel