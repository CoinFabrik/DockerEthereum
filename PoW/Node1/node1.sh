
geth --rpc --rpcport 8545 --rpcaddr "0.0.0.0" \
	 --port 30403 --networkid 22 \
	 --datadir="./node" --ipcpath="geth.ipc" \
	 --rpccorsdomain "*" \
	 --nodiscover

