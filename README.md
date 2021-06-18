# This repo is used to demonstrate the difference and detail about Linux static and dynamic library

## Linux Library Types:
There are two Linux C/C++ library types which can be created:

1. static library (.a): archieve, the code is linked with and becomes part of the application
2. dynamic library (.so): shared object library. There are two ways to use it:
	* run time: Dynamically linked at run time. The libraries must be available during compile/link phase. The code of the .so will not be a part of executable.
	* execution: dynamically loaded/unloaded and linked during execution (i.e. browser plug-in) using the dynamic linking loader system functions (eg. dlopen()).

## Library naming conventions:
typically named with the prefix `lib`. When linking, the command line reference to the library will **not** contain prefix and suffix.

consider this example:
```
gcc src-file.c -lm -lpthread
```
The libraries referenced in this example for inclusion during linking are the math library ("m") and the thread library ("pthread"). They are found in /usr/lib/libm.a and /usr/lib/libpthread.a.
Note: The GNU compiler now has the command line option "-pthread" while older versions of the compiler specify the pthread library explicitly with "-lpthread". Thus now you are more likely to see gcc src-file.c -lm -pthread


## Reference
* http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html
