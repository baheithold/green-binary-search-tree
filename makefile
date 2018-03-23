OBJS = integer.o real.o string.o bst.o queue.o sll.o gst.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g
EXECUTABLES = test-gst gst-0-0 gst-0-1 gst-0-2 gst-0-3 gst-0-4 gst-0-5 gst-0-6 \
			  gst-0-7 gst-0-8 gst-0-9 gst-0-10

all:	$(EXECUTABLES)

test-gst:	$(OBJS) test-gst.o
		gcc $(LOPTS) $(OBJS) test-gst.o -o test-gst

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-0: 	$(OBJS)
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

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

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

gst-0-0.o: 	./Testing/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/gst-0-0.c

test:	$(EXECUTABLES)
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/actual/gst-0-0.txt
		@diff ./Testing/expected/gst-0-0.expected ./Testing/actual/gst-0-0.txt

valgrind:	$(EXECUTABLES)
		@valgrind ./gst-0-0
		@valgrind ./gst-0-1
		@valgrind ./gst-0-2
		@valgrind ./gst-0-3
		@valgrind ./gst-0-4
		@valgrind ./gst-0-5
		@valgrind ./gst-0-6
		@valgrind ./gst-0-7
		@valgrind ./gst-0-8
		@valgrind ./gst-0-9
		@valgrind ./gst-0-10

clean:
		rm -f vgcore.* *.o $(EXECUTABLES)
