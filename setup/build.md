
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
