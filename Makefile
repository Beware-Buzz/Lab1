
# Makefile for World project

binary: main.o libhello.a libgoodbye.a
	gcc -o binary main.o -L. -lhello -lgoodbye 

main.o: main.c
	gcc -c main.c

libhello.a: h_world.o
	ar cr libhello.a h_world.o

libgoodbye.a: g_world.o
	ar cr libgoodbye.a g_world.o

h_world.o: h_world.c
	gcc -c h_world.c

g_world.o: g_world.c
	gcc -c g_world.c

clean:
	rm -f *.o *.a binary

libs: h_world.o g_world.o
	ar cr libhello.a h_world.o
	ar cr libgoodbye.a g_world.o
