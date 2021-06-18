CC= gcc
CFLAGS= -Wall
AR= ar
ARFLAGS= -cvq

SRCS= $(wildcard *.c)
OBJS= $(SRCS:.c=.o)
_LIB_NAME= ctest
_LIB= lib$(_LIB_NAME).a
EXE_1= prog_1
EXE_2= prog_2


.PHONY: all clean

all: $(EXE_1) $(EXE_2)

$(OBJS): %.o:%.c
	$(CC) $(CFLAGS) -c -o $@ $^

$(_LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

$(EXE_1): $(_LIB)
	$(CC) -o $@ prog.c $(_LIB)

$(EXE_2): $(OBJS)
	$(CC) -o $@ prog.c -L./ -l$(_LIB_NAME)


clean:
	$(RM) *.o *.a $(EXE_1) $(EXE_2)
