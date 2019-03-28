#1-2.
FROM docker_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
COPY app2.json eth-net-intelligence-api/app.json
COPY node2.sh node2.sh
RUN chmod +x node2.sh


RUN pwd
RUN geth --datadir="./node"  init Genesis.json
RUN pm2 start node2.sh  && \
	sleep 6  && \
	echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc > nodeinfo.txt  && \
	echo "personal.newAccount('asd')" | geth attach ipc:./node/geth.ipc  && \
	echo "miner.start(); admin.sleepBlocks(10); miner.stop()" | geth attach ipc:./node/geth.ipc 
CMD pm2 start node2.sh  && \
	sleep 3 && \
	cat share2/node1.txt | geth attach ipc:./node/geth.ipc && \
	cd eth-net-intelligence-api && \
	pm2 start app.json && \
	cd .. && \
	echo "miner.start(); admin.sleepBlocks(10); miner.stop()" | geth attach ipc:./node/geth.ipc  & \
	bash
#	sleep 8 && \


#> ./share2/nodeinfo2.txt


#/bin/sh: 1: cannot create /root/ethereum/share2/nodeinfo.txt: Directory nonexistent




#1-2.

# run rm -rf config.yaml
