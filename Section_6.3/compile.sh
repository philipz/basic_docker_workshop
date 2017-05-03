#!/bin/bash
cd /app
npm install
npm install -g pkg
pkg --loglevel info -o ./$2 ./$1
./copy_ldd.sh $2 build
cd build && tar zcf build.tar.gz * && mv build.tar.gz ../ && cd /app && rm -rf build
exit
