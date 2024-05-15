#!/bin/sh
set -eou

if [ "$NETWORK_NAME" == "testnet" ]; then
  export NETWORK=opBNBTestnet
fi

if [ "$NETWORK_NAME" == "mainnet" ]; then
  export NETWORK=opBNBMainnet
fi

# Start op-geth.
exec geth \
  --$NETWORK \
  --datadir="$BEDROCK_DATADIR" \
  --http.addr=0.0.0.0 \
  --authrpc.addr="0.0.0.0" \
  --authrpc.vhosts="*" \
  --authrpc.jwtsecret=./jwt.txt \
  --rollup.sequencerhttp=$L2_RPC
