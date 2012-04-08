#!/bin/sh

# set up target directory structure
mkdir -p /tmp/f2c/bin
mkdir -p /tmp/f2c/lib
mkdir -p /tmp/f2c/include
mkdir -p /tmp/f2c/share/man/man1

# install header
cp f2c.h /tmp/f2c/include/

# build & install libf2c
cd libf2c
make
cp libf2c.a /tmp/f2c/lib/
ranlib /tmp/f2c/lib/libf2c.a
cd ..

# build & install f2c translator
cd src
make
cp f2c /tmp/f2c/bin/
cd ..

# install fc script
cp fc /tmp/f2c/bin/

# install man page
cp f2c.1t /tmp/f2c/share/man/man1/f2c.1

# clean up
cd src
make clean
cd ../libf2c
make clean
