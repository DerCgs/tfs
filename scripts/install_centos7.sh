#!/bin/bash

yum update
yum install -y automake libtool readline-devel zlib-devel libuuid-devel gperftools
sh build.sh init
./configure --prefix=/root/tfs_bin --with-release
make
make install
