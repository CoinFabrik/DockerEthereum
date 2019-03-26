#1-2.
FROM docker_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
# run rm -rf config.yaml

COPY formatADDPEER.py formatADDPEER.py
COPY app1.json eth-net-intelligence-api/app.json
COPY node.sh node.sh
RUN chmod +x node.sh
CMD pm2 start node.sh && \
	sleep 3 && \
	echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc > share2/nodeinfo.txt  && \
	python formatADDPEER.py && \
	rm -rf formatADDPEER.py && \
	cd eth-net-intelligence-api && \
	pm2 start app.json && \
	cd .. && \
	bash



