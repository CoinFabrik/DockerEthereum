EtherSend=$1
Addr=$2



cmdNode="echo 'web3.eth.sendTransaction({ \
				from:web3.eth.accounts[0], \
 				to:\"$Addr\", \
 				value: web3.toWei($EtherSend, \"ether\"), \
 				gas:21000});' \
 		| geth attach ipc:./node/geth.ipc"


docker exec -t Node1 sh \
-c 'echo "web3.personal.unlockAccount(web3.eth.accounts[0], \"asd\", 1000);" \
	 | geth attach ipc:./node/geth.ipc'
	
docker exec -t Node1 sh  -c "$cmdNode" 

