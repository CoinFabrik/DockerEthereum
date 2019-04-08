
FROM img_leanbase:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
RUN add-apt-repository -y ppa:ethereum/ethereum && \
	apt-get install ethereum  -y  && \
	geth version
RUN mkdir -p root/ethereum/test
WORKDIR  root/ethereum
CMD puppeth && \
	triangulos
