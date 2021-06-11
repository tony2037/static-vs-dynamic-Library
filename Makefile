
.PHONY: all
all:
	gcc -Wall -c ctest1.c ctest2.c
	ar -cvq libctest.a ctest1.o ctest2.o
	gcc -o prog prog.c libctest.a
	objdump -t prog | grep ctest


.PHONY: clean
clean:
	rm *.o *.a prog
