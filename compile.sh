#!/bin/bash
set -e

echo "Installing dependency packages..."
sudo apt-get install -y \
  build-essential autoconf automake libtool pkg-config \
  zlib1g-dev libcurl4-openssl-dev libncurses5-dev

echo "Compiling bmminer..."
if ! grep -q "S9_63" ./miner_type.h; then
  ./setminertype S9
fi
make
