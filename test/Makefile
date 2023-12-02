C = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99

TEST_SOURCES = test_power.c
TEST_OBJECTS = $(TEST_SOURCES:.c=.o)

INC_DIRS = -I../include
LIB_DIRS = -L../
LIBS = -lmylibc

test: $(TEST_OBJECTS)
	$(CC) $(CFLAGS) $(INC_DIRS) $(LIB_DIRS) $(LIBS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) $(INC_DIRS) -c -o $@ $<

clean:
	rm -f test $(TEST_OBJECTS)

