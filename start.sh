#!/usr/bin/env bash
docker rm ethnet
docker build -t leanbase  ./base/
docker build -t ethnet ./ethnetstat/
docker build -t node1  ./PoW/
docker build -t node2  ./PoW/
#docker run -p 127.0.0.1:3000:3000 ethnet 


#docker exec -d ethnet cd eth-netstats && npm start


