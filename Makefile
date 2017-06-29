m: m.cpp fake42.o lib.a
	g++ -o m m.cpp fake42.o lib.a

lib.a: real42.o
	ar rcs lib.a real42.o

clean:
	rm *.o *.a m

