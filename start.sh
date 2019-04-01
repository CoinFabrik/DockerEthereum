docker rm -f node1 node2 ethstat
docker rmi -f img_node1 img_node2
docker-compose up -d
docker rm -f pow leanbase