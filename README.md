# Ada_Boy
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
  + include all the toolchains used such as :
	+ Linaro toolchain for arm-eabi-g++
	+ GNAT x86_64 toolchain
	+ GNAT arm toolchaain

+ Quirks of the bindings generator encountered so far:
   + Skipped functions but not skipped variables ?
   + Enum declared in classes are not supported
   + Classes that are inherited are considered abstract objects
   + Cannot have overloaded functions based on constness
      * IE: 2 [] operators that return const reference or plain reference

