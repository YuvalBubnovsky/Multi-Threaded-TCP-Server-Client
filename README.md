# Operating Systems Exercise 3 - Multithreaded Server in C

## How To Run:
firstly clone this repository to a convenient folder, after which you should open it using an IDE or navigate your CMD to that location and run the commands
``` make all ``` and then ``` ./server ``` to get the TCP server up & running followed by ```./client 127.0.0.1``` which will execute the client program and try to connect to localhost (you can also write any other address should you wish, the client code will still work)

## Makefile Targets:
* ```all``` = will build all files (original server code, client code and our multi-thread code)
* ```og``` = will only build the original code given to us 
* ```multi``` = will build the client code and the multi-threaded server code without the original files


Original files were taken from [here](https://beej.us/guide/bgnet/html/#cb46-1)