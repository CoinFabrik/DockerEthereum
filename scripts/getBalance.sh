#!/bin/bash
if [ -z "$1" ];
then
	account="web3.eth.accounts[0]"
else
	account='"'$1'"'
fi
attach=" | geth attach ipc:./node/geth.ipc"


cmdNode="echo 'web3.eth.getBalance($account)'"

echo "$cmdNode $attach" 
docker exec -t Node1 sh  -c "$cmdNode $attach" 


