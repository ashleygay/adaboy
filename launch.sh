#!/bin/sh

try_tar ()
{
	echo "Checking if $1 need decompressing"
	_DIR=${1%.tar.*}
	if [ ! -d $_DIR ]; then
		echo "Decompressing $1"
		tar -xvf $1
	fi
}

CUR_PATH=`pwd`
GNAT_GZ="gnat-gpl-2017-arm-elf-linux-bin.tar.gz"
LINARO_GZ="gcc-linaro-6.3.1-2017.05-i686_arm-eabi.tar.xz"

# If toolchains are not present we download then
{
	echo "Checking if $GNAT_GZ need downloading"
	if [ ! -f $GNAT_GZ ]; then
		wget "mirrors.cdn.adacore.com/art/591c6413c7a447af2deed0e3"
	fi

	echo "Checking if $LINARO_GZ need downloading"
	if [ ! -f $LINARO_GZ ]; then

		wget "http://releases.linaro.org/components/toolchain/binaries/6.3-2017.02/arm-eabi/gcc-linaro-6.3.1-2017.02-i686_arm-eabi.tar.xz"
	fi
}

# We unpack the toolchains here if they have not
# been previously unpacked
{
	try_tar $GNAT_GZ
	try_tar $LINARO_GZ
}


# Setup and build the container here
{
	xhost +local:docker
	docker build -t ada project/
}

# We forward the X server so that the container can use a GUI
# When mounting, we overwrite the default g++ of Ubuntu by
# the one from the linaro toolchain
{
	docker run -e DISPLAY=$DISPLAY\
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $CUR_PATH/${GNAT_GZ%.tar.*}/:/usr/gnat/ \
	-v $CUR_PATH/${LINARO_GZ%.tar.*}/libexec/gcc/arm-eabi/6.3.1/cc1plus:/usr/gnat/libexec/gcc/arm-eabi/6.3.1/cc1plus \
	-v $CUR_PATH/${LINARO_GZ%.tar.*}/bin/arm-eabi-g++:/usr/gnat/bin/g++ \
	-v $CUR_PATH/${LINARO_GZ%.tar.*}/lib/gcc/:/usr/gnat/lib/gcc \
	-v $CUR_PATH/project:/home/gps/ada/ \
	-v ~/.vimrc:/home/gps/.vimrc \
	-t -i ada:latest
}
