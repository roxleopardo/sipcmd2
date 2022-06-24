docker stop queue-watcher
docker rm queue-watcher  
docker build -t queue-watcher .
docker run --cap-add SYS_NICE  --security-opt seccomp:unconfined --name="queue-watcher" -d queue-watcher
docker exec -it queue-watcher bash
