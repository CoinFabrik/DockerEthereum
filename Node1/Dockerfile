#1-3.
FROM ubuntu:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
ENV LANG C.UTF-8


#4. Install base
RUN apt-get update && apt full-upgrade -y && \
	apt-get install -y -q --no-install-recommends \
		software-properties-common \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        wget \
        net-tools

#5-6.Python/pip, TMUX, nano, tmuxp
	RUN apt install -y  python \
						python-pip \
						tmux \
	 					nano 
	RUN pip install tmuxp



#7-14. <NVM>
	# Replace shell with bash so we can source files
	RUN rm /bin/sh && ln -s /bin/bash /bin/sh


	ENV NVM_DIR /usr/local/nvm
	ENV NODE_VERSION 8.11.3

	WORKDIR $NVM_DIR

	RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
	    && . $NVM_DIR/nvm.sh \
	    && nvm install $NODE_VERSION \
	    && nvm alias default $NODE_VERSION \
	    && nvm use default

	ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
	ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH 
	#13 pm2
	RUN npm install pm2@latest -g
#</NVM>

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

