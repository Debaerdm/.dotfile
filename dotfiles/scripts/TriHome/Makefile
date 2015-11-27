.PHONY: clean
SRC=$(wildcard *.c)
JOBS=$(SRC:.c=.o)
CC = gcc
CFLAGS = -Wall -W -Werror

 all: prog

makefile.dep: $(SRC)
$(CC) -MM $(CFLAGS) *.c $^ > $@

prog: $(JOBS)
      $(CC) -o $@ $^

include makefile.dep
				  
clean:
   rm -f *.o
                     
