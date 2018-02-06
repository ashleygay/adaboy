# AdaBoy

Fork of: https://github.com/corentingay/ada_epita for personnal tinkering

* We are porting a gameboy emulator made in C++ to a STM32F7.

* Requirements:
  + Docker
  + gcc-linaro-arm-eabi toolchain
  + gnat-arm-eabi toolchain

* To launch the project
  + ./launch.sh

* Done so far:
  + Created a Dockerfile for GPS with the right environment
  + Modified the emulator to make it compile nicely without the STL
  + We modified the generated Ada bindings to make them work with our emulator
     * We ignore the warnings about absent default constructors, we don't use them
  + Cleanup of the git and setup of the final project architecture
  + Prototype of the Ada rendering code is in src/main.adb

* TODO:
  + Cross compile correctly

For more details see NOTES.md
