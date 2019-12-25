FROM ubuntu:16.04

COPY . /lemoncoin
WORKDIR /lemoncoin

RUN apt-get update

RUN apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
RUN apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y libminiupnpc-dev
RUN apt-get install -y libzmq3-dev

cd src
make -f makefile.unix
