#!/usr/bin/sh

# runing make to make the binaries
make 

echo "########## actual program #########"

# running the binary file
./test

echo "########## actual program #########"


# cleaning the file
make clean
