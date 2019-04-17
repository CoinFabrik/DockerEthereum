FROM img_leanbase:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>

ENV LANG C.UTF-8

COPY /files/* ./

RUN     chmod 777 start.sh && \
	git clone https://github.com/cubedro/eth-netstats && \
        cd eth-netstats && \
        npm install && \
        npm install -g grunt-cli && \
 		grunt all 

EXPOSE 3000

CMD	 ./start.sh
#CMD bash
# WS_SECRET=superAgente86 npm start
