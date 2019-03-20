#!/usr/bin/env bash
#docker rm ethnet
docker build -t leanbase  ./base/
docker build -t ethnet ./ethnetstat/
docker build -t node  ./PoW/	
docker network create --subnet=172.18.0.0/16 mynet123
docker run -it -p 127.0.0.1:3000:3000 --name EthernetServer --net mynet123 --ip 172.18.0.22 ethnet
docker run -it -p 127.0.0.1:8545:8545 -p 127.0.0.1:8000:8000  --net mynet123 --ip 172.18.0.23 --name Node1 node 


#docker exec -d ethnet cd eth-netstats && npm start


