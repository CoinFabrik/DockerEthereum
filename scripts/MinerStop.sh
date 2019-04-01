docker exec -it Node1 sh \
-c 'echo "miner.stop()" | geth attach ipc:./node/geth.ipc'
