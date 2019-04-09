#1-2.
FROM img_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
COPY app2.json eth-net-intelligence-api/app.json
COPY node2.sh node2.sh
RUN chmod +x node2.sh && \
    geth --datadir="./node"  init Genesis.json && \
    pm2 start node2.sh  && \
    sleep 6  && \
    echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc > nodeinfo.txt  && \
    echo "personal.newAccount('asd')" | geth attach ipc:./node/geth.ipc  

CMD pm2 start node2.sh  && \
	sleep 3 && \
	cat share2/node1.txt | geth attach ipc:./node/geth.ipc && \
	cd eth-net-intelligence-api && \
	pm2 start app.json && \
	cd .. && \
	echo ./share2/node1.txt | geth attach ipc:./node/geth.ipc  && \
	bash
