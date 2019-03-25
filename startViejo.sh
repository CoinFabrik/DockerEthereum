#!/usr/bin/env bash
#docker rm ethnet

#builders
	docker build -t leanbase  ./base/
	docker build -t ethnet ./ethnetstat/
	docker build -t pow  ./PoW/	
	docker build -t node1  ./PoW/Node1
	docker build -t node2  ./PoW/Node2	



docker network create --subnet=172.18.0.0/16 EthereumNet



#EthnetStat
	docker run -it -p 127.0.0.1:3000:3000 --name Ethnet --net EthereumNet --ip 172.18.0.22 ethnet
#node1
	docker run -it 
	-v ~/share1:/usr/local/nvm/root/ethereum/share2  
	-p 127.0.0.1:8545:8545 -p 127.0.0.1:8000:8000  
	--net EthereumNet 
	--ip 172.18.0.23 
	--name Node1 node2
#Node2
	docker run -it -v ~/share1:/usr/local/nvm/root/ethereum/share2 -P  --net EthereumNet --ip 172.18.0.24 --name Node2 node2 


#docker exec -d ethnet cd eth-netstats && npm start


admin.nodeInfo.enode

		echo "admin.nodeInfo.enode" | geth attach ipc:./node1/geth1.ipc > share2/txt.txt