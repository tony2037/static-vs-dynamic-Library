## Compiler options:

-Wall: include warnings. See man page for warnings specified.
-fPIC: Compiler directive to output position independent code, a characteristic required by shared libraries. Also see "-fpic".
-shared: Produce a shared object which can then be linked with other objects to form an executable.
-Wl,options: Pass options to linker.
In this example the options to be passed on to the linker are: "-soname libctest.so.1". The name passed with the "-o" option is passed to gcc.
-rpath=dir:  Add a directory to the runtime library search path.
Option -o: Output of operation. In this case the name of the shared object to be output will be "libctest.so.1.0"


## Library Links:

The link to /opt/lib/libctest.so allows the naming convention for the compile flag -lctest to work.
The link to /opt/lib/libctest.so.1 allows the run time binding to work. See dependency below.
