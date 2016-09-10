FROM buildpack-deps:jessie

RUN apt-get update && apt-get install -y \
    build-essential autoconf libtool \
    && apt-get clean

RUN mkdir -p /opt
WORKDIR /opt
RUN git clone -b $(curl -L http://grpc.io/release) https://github.com/grpc/grpc
WORKDIR /opt/grpc
RUN git submodule update --init
RUN make
RUN make install
