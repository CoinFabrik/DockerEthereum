#1-2.
FROM docker_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
# run rm -rf config.yaml
COPY config.yaml config.yaml
RUN chmod +x node.sh

CMD pm2 start node.sh && \
	sleep 3 && \
	echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc > share2/nodeinfo.txt  && \
	bash
