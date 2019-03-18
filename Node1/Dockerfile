#1-3.
FROM leanbase:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>






# 15.Ethereum
	RUN add-apt-repository -y ppa:ethereum/ethereum && \
		apt-get install ethereum  -y  && \
		geth version




#16-18. 
	RUN mkdir -p root/ethereum/test
	WORKDIR  root/ethereum


#19.Explorer install
	RUN git clone https://github.com/lrawiczNC/explorer.git  && \
		cd explorer && \
		npm install 
#20.Eth-net-Api
	RUN git clone https://github.com/cubedro/eth-net-intelligence-api && \
		cd eth-net-intelligence-api && \
		npm install 


	COPY Genesis.json Genesis.json

#24-25 run Node and Generate DAG by mining
	RUN geth --datadir="./test"  init Genesis.json
	RUN geth 	--rpc \
				--rpcport 8545 \
		 		--port 30803 \
		 		--networkid 22 \
		 		--datadir="./test" \
		 		--ipcpath="test.ipc" \
		 		--rpcaddr "0.0.0.0" \
		 		--rpccorsdomain "*" & \
		sleep 2 && \
		echo "personal.newAccount('asd'); miner.start(1); admin.sleepBlocks(10); miner.stop()" | \
			geth attach ipc:./test/test.ipc

	COPY /files/* ./
	RUN mkdir node1
	#21-23.
	run chmod 777 start.sh && \
		chmod 777 stop.sh
	EXPOSE 8545
	EXPOSE 8000
#Levantar el entorno
#correr Geth y minar



# Explorer

