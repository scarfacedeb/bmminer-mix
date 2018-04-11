#!/bin/bash

POOL_URL="stratum+tcp://stratum.slushpool.com:3333 "
POOL_USER="907th.worker1"
POOL_PWD="x"

LOGGING_FLAGS="--debug --protocol-dump --verbose --text-only"
API_FLAGS=""

./bmminer -o $POOL_URL -u $POOL_USER -p $POOL_PWD $LOGGING_FLAGS $API_FLAGS
