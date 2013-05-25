#!/bin/sh
#
# Install Clisp.

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

wget http://cl.ly/0Y2Z1g442424/clisp-2.49.tar.bz2
tar -xvjf clisp-2.49.tar.bz2
cd clisp-2.49
./configure
make
make install
