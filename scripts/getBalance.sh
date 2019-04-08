attach=" | geth attach ipc:./node/geth.ipc"


 	cmdNode="echo 'web3.eth.getBalance(web3.eth.accounts[0])'"


docker exec -t Node1 sh  -c "$cmdNode $attach" 


