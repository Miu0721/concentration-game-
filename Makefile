CC = gcc
CFLAGS = -Wall -Wextra -O2

SRCS_COMMON = game.c net.c
HDRS = game.h net.h

all: server client

server: serverMain.c $(SRCS_COMMON) $(HDRS)
	$(CC) $(CFLAGS) -o server serverMain.c $(SRCS_COMMON)

client: client.c $(SRCS_COMMON) $(HDRS)
	$(CC) $(CFLAGS) -o client client.c $(SRCS_COMMON)

clean:
	rm -f server client *.o
