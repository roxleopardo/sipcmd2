#!/bin/bash

docker stop queue-watcher
docker rm queue-watcher
docker build -t queue-watcher .
docker run --cap-add SYS_NICE  --security-opt seccomp:unconfined --restart unless-stopped --name="queue-watcher" -d queue-watcher
