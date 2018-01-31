#!/bin/sh

# Will try to decompress the file given as parameter
try_tar ()
{
	echo "Checking if $1 need decompressing"
	_DIR=${1%.tar.*}
	if [ ! -d $_DIR ]; then
		echo "Decompressing $1"
		tar -xvf $1
	fi
}
