all: build demo

build:
	mkdir build

demo: demo.o MemoryLCD.o
	g++ -o demo build/demo.o build/MemoryLCD.o -l bcm2835 -l pthread

demo.o:
	g++ -o build/demo.o -c -g -Wall -funsigned-char examples/demo/demo.cpp

MemoryLCD.o:
	g++ -o build/MemoryLCD.o -c -g -Wall -funsigned-char MemoryLCD.cpp

clean:
	rm -rf build/ demo

run:
	./demo
