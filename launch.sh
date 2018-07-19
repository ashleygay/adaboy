#!/bin/sh

try_tar ()
{
	echo "Checking if $1 need decompressing"
	_DIR=${1%.tar.*}
	echo "Checking $_DIR"
	if [ ! -d $_DIR ]; then
		echo "Decompressing $1"
		tar -xf $1
	fi
}

CUR_PATH=`pwd`
GNAT_GZ="gnat-gpl-2017-arm-elf-linux-bin.tar.gz"
LINARO_GZ="gcc-linaro.tar.gz"
LINARO_DEST='gcc-linaro-6.3.1-2017.02-i686_arm-eabi'

# If toolchains are not present we download then
{
	echo "Checking if env.tar.gz need downloading"
	if [ ! -f $GNAT_GZ ]; then
		wget "mirrors.cdn.adacore.com/art/591c6413c7a447af2deed0e3" -O $GNAT_GZ
	fi

	echo "Checking if $LINARO_GZ need downloading"
	if [ ! -f $LINARO_GZ ]; then

		wget "http://releases.linaro.org/components/toolchain/binaries/6.3-2017.02/arm-eabi/gcc-linaro-6.3.1-2017.02-i686_arm-eabi.tar.xz" -O $LINARO_GZ
	fi
}

# We unpack the toolchains here if they have not
# been previously unpacked
{
	try_tar $GNAT_GZ
	try_tar $LINARO_DEST
}


# Setup and build the container here
{
	xhost +local:docker
	docker build -t ada project/
}

# We forward the X server so that the container can use a GUI
# When mounting, we overwrite the default g++ of Ubuntu by
# the one from the linaro toolchain
# TODO: we add something to mount commands for systems without systemd
# Simplify the mess below, explicitly install them in their own dir
# Call them directly from the makefile (maybe not for Ada)
{
	# XXX: Figure it why we need to do that
	# Used in non-systemd distros only
	sudo mkdir /sys/fs/cgroup/systemd
	sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd 
	docker run -e DISPLAY=$DISPLAY\
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $CUR_PATH/project:/home/gps/ada/ \
	-v $CUR_PATH/${LINARO_DEST}:/home/gps/linaro \
	-v ~/.config/nvim/:/home/gps/.config/nvim \
	-t -i ada:latest
}
