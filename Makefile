CC=gcc
FLAGS= -Wall -g

.PHONY: clean

all: client server original_server
og: original_server client
multi: server client

client: original_client.o
	$(CC) $(FLAGS) -o client original_client.o

server: multi_server.o
	$(CC) $(FLAGS) -o server multi_server.o -lpthread

original_server: server.o
	$(CC) $(FLAGS) -o original_server server.o

original_client.o: original_client.c
	$(CC) $(FLAGS) -c original_client.c

multi_server.o: multi_server.c
	$(CC) $(FLAGS) -c multi_server.c

server.o: server.c
	$(CC) $(FLAGS) -c server.c

clean:
	rm -f client server original_server
	rm -f *.o *.a
