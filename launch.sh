#!/bin/sh

source "functions.sh"
CUR_PATH=`pwd`

GNAT_GZ="gnat-gpl-2017-arm-elf-linux-bin.tar.gz"
LINARO_GZ="gcc-linaro-6.3.1-2017.05-i686_arm-eabi.tar.xz"

# We unpack the toolchains here if they have not
# been previously unpacked
{
	try_tar $GNAT_GZ
	try_tar $LINARO_GZ
}


# Setup and building the container here
{
	xhost +local:docker
	docker build -t ada project/
}

# We forward the X server so that the container can use a GUI
{
	docker run -e DISPLAY=$DISPLAY\
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $CUR_PATH/${GNAT_GZ%.tar.*}:/usr/gnat \
	-v $CUR_PATH/project:/home/gps/ada/ \
	-v ~/.vimrc:/home/gps/.vimrc \
	-t -i ada:latest
}
