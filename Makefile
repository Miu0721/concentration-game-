CFLAGS = -Wall -Wextra -O2 -MMD -MP

SRCS_SERVER = serverMain.c game.c net.c startGame.c
SRCS_CLIENT = client.c     game.c net.c
OBJS_SERVER = $(SRCS_SERVER:.c=.o)
OBJS_CLIENT = $(SRCS_CLIENT:.c=.o)

all: server client

server: $(OBJS_SERVER)
	$(CC) $(CFLAGS) -o $@ $(OBJS_SERVER)

client: $(OBJS_CLIENT)
	$(CC) $(CFLAGS) -o $@ $(OBJS_CLIENT)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f server client $(OBJS_SERVER) $(OBJS_CLIENT)

-include $(OBJS_SERVER:.o=.d) $(OBJS_CLIENT:.o=.d)
