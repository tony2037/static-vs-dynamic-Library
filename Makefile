
.PHONY: all
all:
	gcc -Wall -c ctest1.c ctest2.c
	ar -cvq libctest.a ctest1.o ctest2.o
	gcc -o prog prog.c libctest.a
	objdump -t prog | grep ctest


.PHONY: clean
clean:
	rm -rf *.o *.a prog *.so

.PHONY: conflict
conflict:
	gcc -c -o ctest2.o ctest2.c
	gcc -c -o prog.o prog.c
	gcc -c -o conflict.o conflict.c
	gcc -o prog_ctest2 ctest2.o prog.o
	gcc -o prog_conflict conflict.o prog.o
	echo "objdump -x to see detail"
