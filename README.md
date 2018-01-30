# ada_epita
Ada project for EPITA

* Group members:
  + Corentin Gay
  + Arnaud Bastie
  + Pierre-Adrien Estanove
  + Pierre Chavanne

* We are porting a gamboy emulator made in C++ to a STM32F7.
* We use Ada for all the rendering.

* Done so far:
  + Creating a Dockerfile for GPS with the right environment
  + We are modifying the emulator to make it compile nicely without the STL

* TODO:
  + include all the toolchains used in the git:
	+ Linaro toolchain for arm-eabi-g++
	+ GNAT x86_64 toolchain
	+ GNAT arm toolchaain
