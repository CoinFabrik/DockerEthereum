#1-2.
FROM docker_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
# run rm -rf config.yaml

COPY formatADDPEER.py formatADDPEER.py
COPY app1.json eth-net-intelligence-api/app.json
COPY node1.sh node1.sh
RUN chmod +x node1.sh

	# > share2/nodeinfo.txt  
RUN geth --datadir="./node"  init Genesis.json && \
	pm2 start node1.sh && \
	sleep 4 && \
	echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc  > nodeinfo.txt  && \
	python formatADDPEER.py && \
	rm -rf formatADDPEER.py && \
	echo "personal.newAccount('asd')" | geth attach ipc:./node/geth.ipc  

CMD	cp nodeinfo.txt /home/root/ethereum/share2/node1.txt && \
	pm2 start node1.sh  && \
	cd eth-net-intelligence-api && \
	pm2 start app.json && \
	cd .. && \
	echo "miner.start(); admin.sleepBlocks(10); miner.stop()" | geth attach ipc:./node/geth.ipc  & \
	bash


