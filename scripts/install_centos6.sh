#!/bin/bash

yum update
yum install -y automake libtool readline-devel zlib-devel libuuid-devel gcc-c++ gcc
sh build.sh init
./configure --prefix=/root/tfs_bin --with-release --without-tcmalloc
make
make install
