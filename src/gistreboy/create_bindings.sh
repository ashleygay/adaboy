#!/bin/sh

# We generate the Ada bindings
{
	cd src
	rm *.ads
	g++ -fdump-ada-spec -C -I. gameboy.hpp
	cd ..
}

# We strip the executable to get only the binary
# Not for now, will be used when compiling is going well
# ./strip.sh main
