#!/bin/bash

cd /tmp
git clone -b v1.0.0 https://github.com/grpc/grpc
cd /tmp/grpc
git submodule update --init
make
make install
rm -rf /tmp/grpc
