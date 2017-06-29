all:    mreal mfake
	

mreal:  lib.a
	g++ -o mreal lib.a

mfake: fake42.o lib.a
	g++ -o mfake fake42.o lib.a

lib.a: m.o real42.o
	ar rcs lib.a real42.o m.o

clean:
	rm *.o *.a mreal mfake

