#
# Students' Makefile for the Malloc Lab
#

CC = gcc34
CFLAGS = -m32 -Wall -O2

OBJS = mdriver.o mm.o memlib.o fsecs.o fcyc.o clock.o ftimer.o

mdriver: clean $(OBJS)
	$(CC) $(CFLAGS) -o mdriver $(OBJS)
 
mdriver-debug: CFLAGS += -g
mdriver-debug: mdriver
 
mdriver.o: mdriver.c fsecs.h fcyc.h clock.h memlib.h config.h mm.h
memlib.o: memlib.c memlib.h
mm.o: mm.c mm.h memlib.h
fsecs.o: fsecs.c fsecs.h config.h
fcyc.o: fcyc.c fcyc.h
ftimer.o: ftimer.c ftimer.h config.h
clock.o: clock.c clock.h

clean:
	rm -f *~ *.o mdriver


