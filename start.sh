#!/usr/bin/env bash
#docker rm ethnet
docker build -t leanbase  ./base/
docker build -t ethnet ./ethnetstat/
docker build -t node  ./PoW/	
#docker run -it -p 127.0.0.1:3000:3000 --name EthernetServer ethnet
#docker run -it -p 127.0.0.1:8545:8545 -p 127.0.0.1:8000:8000  --name Node1 node 


#docker exec -d ethnet cd eth-netstats && npm start


