#!/bin/bash

cd /tmp
git clone -b $(curl -L http://grpc.io/release) https://github.com/grpc/grpc
cd /tmp/grpc
git submodule update --init
make
make install
rm -rf /tmp/grpc
