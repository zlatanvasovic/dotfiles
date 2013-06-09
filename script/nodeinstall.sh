#!/bin/sh
#
# Install Node.

# Root privilegies is needed!
if [[ $EUID -ne 0 ]]; then
	echo "Script must be run as root!" 1>&2
	exit 1
fi

# Ubuntu dependencies
lsb_release -r |grep "Distributor ID:	Ubuntu" > /dev/null;
if [ $? -eq 0 ]; then
	apt-get install build-essential
fi

# Installation
wget http://nodejs.org/dist/v0.8.17/node-v0.8.17.tar.gz
tar -xvzf node-v0.8.17.tar.gz
cd node-v0.8.17
./configure
make
make install
