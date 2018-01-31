* Quirks of the bindings generator encountered so far:
   + Skipped functions but not skipped variables ?
   + Enum declared in classes are not supported
   + Classes that are inherited are considered abstract objects
   + Cannot have overloaded functions based on constness
   + The binding generator does not work very well with templated types

* Articles for interfacing Ada with C++:
   + https://gcc.gnu.org/onlinedocs/gcc-4.9.2/gnat_ugn/Generating-Ada-Bindings-for-C-and-C_002b_002b-headers.html#Generating-Ada-Bindings-for-C-and-C_002b_002b-headers

   +https://gcc.gnu.org/onlinedocs/gnat_ugn/Interfacing-with-C_002b_002b-at-the-Class-Level.html

* Other interesting links:
   + Practical bare metal in c++ : reddit post + actual blog : https://arobenko.gitbooks.io/bare_metal_cpp/content/

   + CppCon 2016: Rian Quinn “Making C++ and the STL Work in the Linux / Windows Kernels"

* Tools used:
   + arm-eabi-g++ from linaro:
   + gnat arm toolchain:

For some reason, g++ -fdump-ada-spec does not generate templated types,
we must write them by hand.

The binding generator does not make the connection between the templated type
and its instanciation.
	IE: memory expects a member of type class_array but the type generated
	    is actually a record of type c_array_unsigned_char65536

Basically, "g++ -fdump-ada-spec" does not fully work with templated types.


