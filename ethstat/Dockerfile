#1-3.
FROM docker_leanbase:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>


ENV LANG C.UTF-8

#</NVM>
WORKDIR  root/
RUN     git clone https://github.com/cubedro/eth-netstats && \
        cd eth-netstats && \
        npm install && \
        npm install -g grunt-cli && \
 		grunt all 



EXPOSE 3000
WORKDIR  /usr/local/nvm/root/
COPY /files/* ./
run chmod 777 start.sh
CMD	 ./start.sh
#CMD bash
# WS_SECRET=superAgente86 npm start