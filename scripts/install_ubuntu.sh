#!/bin/bash

apt update
apt install -y automake libtool libreadline-dev zlib1g-dev uuid-dev libgoogle-perftools-dev build-essential libncurses-dev libmysqlclient-dev libmysqld-dev libjemalloc-dev libfastjson-dev libcurl4-openssl-dev
sh build.sh init
./configure --prefix=/root/tfs_bin --with-release --disable-kvmeta
make
make install
