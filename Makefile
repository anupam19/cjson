# File Name : Makefile
# Location : [@top root directory] cjson/
# Author : Anupam Datta
# Mail : adbd04@gmail.com
# Description : compiles cjson library and produces shared library libcjson.so inside [.libs] directory (cjson/.libs/)
# [-cont.] compile your project with '-lcjson'

CC:=$(CC)
CFLAGS:=-Wextra -Wformat-security -Winline -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wpointer-arith -Wshadow -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wunused -Wunused-result -Wlogical-op -g -O0 -DWITH_POSIX -fPIC -lm

LDFLAGS:=-shared

PREFIX:=/usr/local
SRC:=src
INCLUDE:=includes
OBJ:=cJSON.o
SHARED:=libcjson.so
MKDIR:=mkdir -p
LIB:=.libs
APP:=app
TEST:=test

.PHONY:	.libs test app

all: $(LIB) $(OBJ) $(SHARED) $(TEST) $(APP)

cJSON.o:	$(SRC)/cJSON.c
	$(CC) -c $(CFLAGS) -I$(INCLUDE) $<

$(LIB):
	$(MKDIR) $(LIB)

$(SHARED): $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(SHARED) $(OBJ)
	@rm -f $(PROGRAMS) $(OBJ) *~
	@mv $(SHARED) $(LIB)

$(TEST):
	$(MAKE) -C $(TEST)

$(APP):
	$(MAKE) -C $(APP)

clean:
	@rm -rf $(LIB)
	@rm -f $(PROGRAMS) $(OBJ) *~ *.so
	$(MAKE) -C $(TEST) clean
	$(MAKE) -C $(APP) clean

install:
	cp $(LIB)/$(SHARED) $(DESTDIR)$(PREFIX)/lib/$(SHARED)
	$(MKDIR) $(DESTDIR)$(PREFIX)/include/cjson
	cp -a includes/* $(DESTDIR)$(PREFIX)/include/cjson/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/lib/$(SHARED)
	rm -rf $(DESTDIR)$(PREFIX)/include/cjson/
