CC:=$(CC)
CFLAGS:=-Wextra -Wformat-security -Winline -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wpointer-arith -Wshadow -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wunused -Wunused-result -Wlogical-op -g -O0 -DWITH_POSIX -fPIC

LIB:=../.libs

INCLUDE:=-I../includes
OBJ:=cJSON_Utils.o test_utils.o
PROGRAMS:=app

LDFLAGS:=-L$(LIB) -lcjson -Wl,-rpath=$(LIB) -lm

all:	$(OBJ) $(PROGRAMS)

cJSON_Utils.o:	cJSON_Utils.c
	$(CC) -c $(CFLAGS) $(INCLUDE) $< $(LDFLAGS)

test_utils.o:	test_utils.c
	$(CC) -c $(CFLAGS) $(INCLUDE) $< $(LDFLAGS)

app:	$(OBJ)
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $^ $(LDFLAGS)
	@rm -f $(OBJ) *~

clean:
	@rm -f $(PROGRAMS) $(OBJ) *~
