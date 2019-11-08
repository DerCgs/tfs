#!/bin/bash

apt update
apt install -y automake libtool libreadline-dev zlib1g-dev uuid-dev libgoogle-perftools-dev build-essential libncurses-dev
sh build.sh init
./configure --prefix=/root/tfs_bin --with-release
make
make install
