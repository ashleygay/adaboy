#!/bin/sh

 xhost +local:docker

docker build -t ada .

# We forward the X server so that the container can use a GUI
# FIXME Maybe not the greatest idea to mount /dev
docker run -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /usr/gnat:/usr/gnat \
-v /dev:/dev \
-v ~/gistre/courses/ada/ada_epita/:/home/gps/ada/ \
-t -i ada:latest
