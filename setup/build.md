
## db48

sudo ./install_db4.sh /usr/local/opt/

BDB_PREFIX='/usr/local/opt/berkeley-db4'


## openssl

./Configure darwin64-x86_64-cc --openssldir=/usr/local/opt/openssl
sudo make depend
sudo make
sudo make install_sw


## miniupnpc

INSTALLPREFIX=/Users/haiping/repos/deps/opt/miniupnpc make install


## boost

brew uninstall boost
brew install boost@1.57
brew link boost@1.57 --force



qmake "RELEASE=1"
make


## Ubuntu

apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
apt-get install libboost-all-dev
apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev

apt-get install software-properties-common
add-apt-repository ppa:bitcoin/bitcoin
apt-get update
apt-get install libdb4.8-dev libdb4.8++-dev

apt-get install libminiupnpc-dev

apt-get install libzmq3-dev

node 1: 202.182.105.216
server=1
rpcuser=lemoncoinrpc
rpcpassword=goodboy

node 2: 207.148.92.134
server=1
addnode=202.182.105.216
rpcuser=lemoncoinrpc
rpcpassword=goodboy

