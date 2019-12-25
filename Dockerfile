FROM ubuntu:16.04

COPY . /lemoncoin
WORKDIR /lemoncoin/src

RUN apt-get update

RUN apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
RUN apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
RUN apt-get install -y libboost-all-dev

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y libdb4.8-dev libdb4.8++-dev

RUN apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
RUN apt-get install -y libqt4-dev libprotobuf-dev protobuf-compiler

RUN apt-get install -y libminiupnpc-dev
RUN apt-get install -y libzmq3-dev

#RUN cd src
RUN make -f makefile.unix
