#!/bin/sh
set -eou

if [ "$NETWORK_NAME" == "testnet" ]; then
  export NETWORK=opBNBTestnet
fi

if [ "$NETWORK_NAME" == "mainnet" ]; then
  export NETWORK=opBNBMainnet
fi

# Start op-node.
exec op-node \
  --network=$NETWORK \
  --snapshotlog.file=./snapshot.log \
  --l2.jwt-secret=./jwt.txt \
  --l1=$OP_NODE__RPC_ENDPOINT \
  --l2=http://op-geth:8551
