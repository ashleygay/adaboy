#!/bin/sh

 xhost +local:docker

# We forward the X server so that the container can use a GUI
docker build -t ada .
docker run --cap-add=all --privileged -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /usr/gnat:/usr/gnat \
-v ~/courses/ada/ada_epita:/home/gps/ada \
-t -i ada:latest
