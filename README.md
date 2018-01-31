# AdaBoy
Ada project for EPITA

* Group members:
  + Corentin Gay
  + Arnaud Bastie
  + Pierre-Adrien Estanove
  + Pierre Chavanne

* We are porting a gameboy emulator made in C++ to a STM32F7.

* Requirements:
  + Docker
  + gcc-linaro-arm-eabi toolchain
  + gnat-arm-eabi toolchain

* To launch the project
  + ./launch.sh

* Done so far:
  + Creating a Dockerfile for GPS with the right environment
  + We are modifying the emulator to make it compile nicely without the STL
  + We modified the generated Ada bindings to make them work with our emulator
     * We ignore the warnings about absent default constructors, we don't use them
  + Cleanup of the git and setup of the final project architecture

* TODO:
  + include all the toolchains used such as:
    + Cross compile correctly
    + Do the display

