cp ~/static-nodes.json /root/.ethereum/geth/static-nodes.json
geth --bootnodes enode://3a62bfb14dd5f1e1b7528c3ff886630d2d8ec6e9419288e4aed481f0af690d4c4a4317551ff77e6febac5378a75a8e87bed07e26a1a774fa7847af33230e7dc5@178.128.241.175:30305 --networkid "235813" --verbosity=4 --rpc --rpcaddr "0.0.0.0" --rpcapi "eth,web3,net,admin,debug,db" --rpccorsdomain "*" --syncmode="fast" --nodiscover