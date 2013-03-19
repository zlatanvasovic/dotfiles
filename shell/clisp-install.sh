#!/bin/bash
# CLISP install script
# by Zlatan Vasović (ZDroid) @ 2013

# OLD SCHOOL COMPILE!
# For Ubuntu you need build essential (uncomment next line)
# sudo apt-get install build-essential
wget https://downloads.sourceforge.net/project/clisp/clisp/2.49/clisp-2.49.tar.bz2?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fclisp%2F%3Fsource%3Dnavbar&ts=1358540512&use_mirror=switch
uncompress clisp-2.49.tar.bz2
tar -xvf clisp-2.49.tar
cd clisp-2.49
./configure
make
# Add sudo at start of this line or run script as root (~#)
make install

# For Ubuntu you can use (also uncomment next line)
# sudo apt-get install clisp

# Running clisp (uncomment next line)
# clisp
