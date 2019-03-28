docker rm -f node1 node2 ethstat
# docker rmi -f docker_node1 docker_node2
docker-compose up -d
docker rm -f pow leanbase
docker attach node1 --detach-keys="ctrl-d"