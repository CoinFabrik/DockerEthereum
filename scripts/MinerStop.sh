docker exec -it Node1 sh \
-c 'echo "miner.start()" | geth attach ipc:./node/geth.ipc'