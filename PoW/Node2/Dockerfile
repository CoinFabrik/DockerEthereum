#1-2.
FROM docker_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
RUN chmod +x node.sh

COPY app.json app.json

CMD pm2 start node.sh && \
	sleep 6 && \
	cd eth-net-intelligence-api && \
	pm2 start app.json && \
	bash
