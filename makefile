OBJS = integer.o real.o string.o bst.o queue.o sll.o gst.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g
EXECUTABLES = test-gst gst-0-0 gst-0-1 gst-0-2 gst-0-3 gst-0-4 gst-0-5 gst-0-6 \
			  gst-0-7 gst-0-8 gst-0-9 gst-0-10

all:	$(EXECUTABLES)

test-gst:	$(OBJS) test-gst.o
		gcc $(LOPTS) $(OBJS) test-gst.o -o test-gst

gst-0-0: 	$(OBJS) gst-0-0.o
		gcc $(LOPTS) $(OBJS) gst-0-0.o -o gst-0-0

gst-0-1: 	$(OBJS) gst-0-1.o
		gcc $(LOPTS) $(OBJS) gst-0-1.o -o gst-0-1

gst-0-2: 	$(OBJS) gst-0-2.o
		gcc $(LOPTS) $(OBJS) gst-0-2.o -o gst-0-2

gst-0-3: 	$(OBJS) gst-0-3.o
		gcc $(LOPTS) $(OBJS) gst-0-3.o -o gst-0-3

gst-0-4: 	$(OBJS) gst-0-4.o
		gcc $(LOPTS) $(OBJS) gst-0-4.o -o gst-0-4

gst-0-5: 	$(OBJS) gst-0-5.o
		gcc $(LOPTS) $(OBJS) gst-0-5.o -o gst-0-5

gst-0-6: 	$(OBJS) gst-0-6.o
		gcc $(LOPTS) $(OBJS) gst-0-6.o -o gst-0-6

gst-0-7: 	$(OBJS) gst-0-7.o
		gcc $(LOPTS) $(OBJS) gst-0-7.o -o gst-0-7

gst-0-8: 	$(OBJS) gst-0-8.o
		gcc $(LOPTS) $(OBJS) gst-0-8.o -o gst-0-8

gst-0-9: 	$(OBJS) gst-0-9.o
		gcc $(LOPTS) $(OBJS) gst-0-9.o -o gst-0-9

gst-0-10: 	$(OBJS) gst-0-10.o
		gcc $(LOPTS) $(OBJS) gst-0-10.o -o gst-0-10

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

gst-0-0.o: 	./Testing/0/gst-0-0.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-0.c

gst-0-1.o: 	./Testing/0/gst-0-1.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-1.c

gst-0-2.o: 	./Testing/0/gst-0-2.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-2.c

gst-0-3.o: 	./Testing/0/gst-0-3.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-3.c

gst-0-4.o: 	./Testing/0/gst-0-4.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-4.c

gst-0-5.o: 	./Testing/0/gst-0-5.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-5.c

gst-0-6.o: 	./Testing/0/gst-0-6.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-6.c

gst-0-7.o: 	./Testing/0/gst-0-7.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-7.c

gst-0-8.o: 	./Testing/0/gst-0-8.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-8.c

gst-0-9.o: 	./Testing/0/gst-0-9.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-9.c

gst-0-10.o: 	./Testing/0/gst-0-10.c gst.h bst.h queue.h integer.h real.h string.h
	 gcc $(OOPTS) ./Testing/0/gst-0-10.c

test:	$(EXECUTABLES)
		@echo Testing gst-0-0...
		@./gst-0-0 > ./Testing/0/actual/gst-0-0.txt
		@diff ./Testing/0/expected/gst-0-0.expected ./Testing/0/actual/gst-0-0.txt
		@echo Testing gst-0-1...
		@./gst-0-1 > ./Testing/0/actual/gst-0-1.txt
		@diff ./Testing/0/expected/gst-0-1.expected ./Testing/0/actual/gst-0-1.txt
		@echo Testing gst-0-2...
		@./gst-0-2 > ./Testing/0/actual/gst-0-2.txt
		@diff ./Testing/0/expected/gst-0-2.expected ./Testing/0/actual/gst-0-2.txt
		@echo Testing gst-0-3...
		@./gst-0-3 > ./Testing/0/actual/gst-0-3.txt
		@diff ./Testing/0/expected/gst-0-3.expected ./Testing/0/actual/gst-0-3.txt
		@echo Testing gst-0-4...
		@./gst-0-4 > ./Testing/0/actual/gst-0-4.txt
		@diff ./Testing/0/expected/gst-0-4.expected ./Testing/0/actual/gst-0-4.txt
		@echo Testing gst-0-5...
		@./gst-0-5 > ./Testing/0/actual/gst-0-5.txt
		@diff ./Testing/0/expected/gst-0-5.expected ./Testing/0/actual/gst-0-5.txt
		@echo Testing gst-0-6...
		@./gst-0-6 > ./Testing/0/actual/gst-0-6.txt
		@diff ./Testing/0/expected/gst-0-6.expected ./Testing/0/actual/gst-0-6.txt
		@echo Testing gst-0-7...
		@./gst-0-7 > ./Testing/0/actual/gst-0-7.txt
		@diff ./Testing/0/expected/gst-0-7.expected ./Testing/0/actual/gst-0-7.txt
		@echo Testing gst-0-8...
		@./gst-0-8 > ./Testing/0/actual/gst-0-8.txt
		@diff ./Testing/0/expected/gst-0-8.expected ./Testing/0/actual/gst-0-8.txt
		@echo Testing gst-0-9...
		@./gst-0-9 > ./Testing/0/actual/gst-0-9.txt
		@diff ./Testing/0/expected/gst-0-9.expected ./Testing/0/actual/gst-0-9.txt
		@echo Testing gst-0-10...
		@./gst-0-10 > ./Testing/0/actual/gst-0-10.txt
		@diff ./Testing/0/expected/gst-0-10.expected ./Testing/0/actual/gst-0-10.txt

valgrind:	$(EXECUTABLES)
		#@valgrind ./gst-0-0
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
