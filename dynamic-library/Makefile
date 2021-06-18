CC= gcc
CFLAGS= -Wall -fPIC

SRCS= $(wildcard *.c)
OBJS= $(SRCS:.c=.o)
_LIB_NAME= ctest
_LIB= lib$(_LIB_NAME).so.1
EXE= prog


.PHONY: all clean

all: $(EXE_1) $(EXE_2)

$(OBJS): %.o:%.c
	$(CC) $(CFLAGS) -c -o $@ $^

$(_LIB): $(OBJS)
	$(CC) -shared -Wl,-soname, -o $@ $^
	 ln -sf $@ /opt/lib/libctest.so

$(EXE): $(OBJS)
	$(CC) -Wall -L./ prog.c -l$(_LIB_NAME) -o $@


clean:
	$(RM) *.o *.so* $(EXE_1) $(EXE_2)
