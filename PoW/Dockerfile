#1-2.
FROM docker_leanbase:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>





# 2.Ethereum
	RUN add-apt-repository -y ppa:ethereum/ethereum && \
		apt-get install ethereum  -y  && \
		geth version




#3-4. 
	RUN mkdir -p root/ethereum/test
	WORKDIR  root/ethereum


#5.Explorer install
	RUN git clone https://github.com/lrawiczNC/explorer.git  && \
		cd explorer && \
		npm install 
#6.Eth-net-Api
	RUN git clone https://github.com/cubedro/eth-net-intelligence-api && \
		cd eth-net-intelligence-api && \
		npm install 



	COPY /files/* ./
	RUN mkdir node 

#extra

	EXPOSE 8545
	EXPOSE 8000








#7-10 run Node and Generate DAG by mining
	RUN geth --datadir="./node"  init Genesis.json
	RUN pm2 start node.sh && \
	sleep 4 && \
	echo "personal.newAccount('asd'); miner.start(); admin.sleepBlocks(10); miner.stop()" | \
	geth attach ipc:./node/geth.ipc  

	#RUN	echo "personal.newAccount('asd'); miner.start(); admin.sleepBlocks(10); miner.stop()" | \
	#RUN	pm2 stop node

	RUN rm -rf node/
