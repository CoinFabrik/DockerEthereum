docker rm -f node1 node2 ethstat
docker-compose up -d
docker rm -f pow leanbase
docker attach  node1