# Redis-Sentinel-Docker-Compose

An example setup for using Redis Sentinel with Docker Compose.

For more information and an explanation, see: https://www.developers-notebook.com/development/using-redis-sentinel-with-docker-compose/


# Redis UI

Dashboard can be accessed by the follow url
- http://localhost:7843/

After accessing the page go to connect -> sentinels-setup configuration


# Get master name ip by name

```
docker exec redis-sentinel-docker-compose-redis-sentinel1-1 redis-cli -p 26379 SENTINEL get-master-addr-by-name redismaster

```
