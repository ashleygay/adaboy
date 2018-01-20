#!/bin/sh

docker build -t ada .
docker run -v /usr/gnat:/usr/gnat -v ~/emu_ada:/home/ferryk/ada -t -i ada:latest
