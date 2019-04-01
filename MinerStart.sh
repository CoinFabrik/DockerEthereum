docker exec -it node1 sh \
-c 'echo "miner.start()" | geth attach ipc:./node/geth.ipc'