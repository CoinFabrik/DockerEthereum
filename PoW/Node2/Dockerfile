#1-2.
FROM docker_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
COPY app2.json eth-net-intelligence-api/app.json
COPY node.sh node.sh
RUN chmod +x node.sh


CMD pm2 start node.sh && \
	sleep 6 && \
	cd eth-net-intelligence-api && \
	pm2 start app.json && \
	cat share2/nodeinfo.txt | geth attach ipc:./node/geth.ipc & \
	bash
