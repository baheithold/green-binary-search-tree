OBJS = integer.o real.o string.o bst.o queue.o sll.o gst.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g
EXECUTABLES = test-gst gst-0-0

all:	$(EXECUTABLES)

test-gst:	$(OBJS) test-gst.o
		gcc $(LOPTS) $(OBJS) test-gst.o -o test-gst

gst-0-0: 	integer.o bst.o queue.o gst.o sll.o gst-0-0.o
		gcc $(LOPTS) integer.o bst.o queue.o gst.o sll.o gst-0-0.o -o gst-0-0

integer.o:	integer.c integer.h
		gcc $(OOPTS) integer.c

real.o:	real.c real.h
		gcc $(OOPTS) real.c

string.o:	string.c string.h
		gcc $(OOPTS) string.c

queue.o:	queue.c queue.h sll.h
		gcc $(OOPTS) queue.c

sll.o:	sll.c sll.h
		gcc $(OOPTS) sll.c

bst.o:	bst.c bst.h queue.h
		gcc $(OOPTS) bst.c

gst.o:	gst.c gst.h bst.h
		gcc $(OOPTS) gst.c

test-gst.o:	./Testing/test-gst.c gst.h bst.h queue.h integer.h real.h string.h
		gcc $(OOPTS) ./Testing/test-gst.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

test:	$(EXECUTABLES)
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/myresults/gst-0-0.txt
		@diff ./Testing/expectedresults/gst-0-0.expected ./Testing/myresults/gst-0-0.txt

valgrind:	$(EXECUTABLES)
		@valgrind ./gst-0-0

clean:
		rm -f vgcore.* *.o $(EXECUTABLES)
