#!/bin/sh -e

TARGET_DIR="/tmp/f2c"

# set up target directory structure
mkdir -p $TARGET_DIR/bin
mkdir -p $TARGET_DIR/lib
mkdir -p $TARGET_DIR/include
mkdir -p $TARGET_DIR/share/man/man1

# install header
cp f2c.h $TARGET_DIR/include/

# build & install libf2c
cd libf2c
make
cp libf2c.a $TARGET_DIR/lib/
ranlib $TARGET_DIR/lib/libf2c.a
cd ..

# build & install f2c translator
cd src
make
cp f2c $TARGET_DIR/bin/
cd ..

# install fc script
cp fc $TARGET_DIR/bin/

# install man page
cp f2c.1t $TARGET_DIR/share/man/man1/f2c.1

# clean up
cd src
make clean
cd ../libf2c
make clean
