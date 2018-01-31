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
  + We modified the generated Ada bindings to make them work with our emulator
     * We ignore the warnings about absent default constructors, we don't use them

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
   + The binding generator does not work very well with templated types

For some reason, g++ -fdump-ada-spec does not generate templated types,
we must write them by hand.

The binding generator does not make the connection between the templated type
and its instanciation.
	IE: memory expects a member of type class_array but the type generated
	    is actually a record of type c_array_unsigned_char65536

Basically, "g++ -fdump-ada-spec" does not fully work with templated types.

