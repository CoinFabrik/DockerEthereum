#1-2.
FROM docker_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
# run rm -rf config.yaml
COPY config.yaml config.yaml
RUN chmod +x nodo.sh
CMD pm2 start nodo.sh
RUN echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc > share2/nodeinfo.txt
