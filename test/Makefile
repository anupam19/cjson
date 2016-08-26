CC:=$(CC)
CFLAGS:=-Wextra -Wformat-security -Winline -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wpointer-arith -Wshadow -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wunused -Wunused-result -Wlogical-op -g -O0 -DWITH_POSIX -fPIC

INCLUDE:=-I../includes
OBJ:=test.o
PROGRAMS:=test
LIB:=../.libs

LDFLAGS:=-L$(LIB) -lcjson -Wl,-rpath=$(LIB) -lm

all:	$(OBJ) $(PROGRAMS)

test.o:	test.c
	$(CC) -c $(CFLAGS) $(INCLUDE) $< $(LDFLAGS)

test:	$(OBJ)
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $^ $(LDFLAGS)
	@rm -f $(OBJ) *~

clean:
	@rm -f $(PROGRAMS) $(OBJ) *~
