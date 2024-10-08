
CC = /usr/bin/clang
CFLAGS = -pedantic -std=c17 -Wall -Wextra -O0 -g


all: paws

paws: paws.c feature_test_macros.h sigmap.h sigmap.o
	$(CC) $(CFLAGS) -o paws paws.c sigmap.o
	/bin/chmod 775 paws

sigmap.o: sigmap.c feature_test_macros.h sigmap.h
	$(CC) $(CFLAGS) -c -o sigmap.o sigmap.c

clean:
	/bin/rm -f paws sigmap.o
