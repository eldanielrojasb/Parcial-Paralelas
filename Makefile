all: compile exe clean

compile:
	gcc -o main main.c

exe:
	./all.sh

clean:
	rm -f main *.bin *.new 
