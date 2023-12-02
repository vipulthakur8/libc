C = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99

LIB_SOURCES = src/math/power.c
LIB_OBJECTS = $(LIB_SOURCES:.c=.o)

INC_DIRS = -I./include

libmylibc.a: $(LIB_OBJECTS)
	ar rcs $@ $(LIB_OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) $(INC_DIRS) -c -o $@ $<

clean:
	rm -f libmylibc.a $(LIB_OBJECTS)

