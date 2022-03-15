NAME = minitalk
SOURCES = server.c client.c
BONUS = _server.c _client.c
OBJECTS = $(SOURCES:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror
CYAN = \033[0;36m
GOLD = \033[0;33m

all: credit server client

bonus: credit server client

server: server.o libft
	$(CC) -o $@ $< -Llibft -lft

client: client.o libft
	$(CC) -o $@ $< -Llibft -lft

%.o: %.c
	$(CC) -c $(CFLAGS) $<

libft:
	make -C libft

clean:
	rm -f $(OBJECTS)
	make -C libft clean
	
fclean: clean
	rm -f server client libft/libft.a

re: fclean all

.PHONY: all bonus libft clean fclean re

credit:
	@printf "                  $(CYAN)_$(NAME) made by:_$(GOLD)\n"
	@echo "888     888 d8b        "                    
	@echo "888     888 Y8P                            "
	@echo "888     888                                "
	@echo "Y88b   d88P 888 888  888  .d88b.  88888b.  "
	@echo " Y88b d88P  888 888  888 d8P  Y8b 888 \"88b "
	@echo "  Y88o88P   888 888  888 88888888 888  888 "
	@echo "   Y888P    888 Y88b 888 Y8b.     888  888 "
	@echo "    Y8P     888  \"Y88888  \"Y8888  888  888 "
	@echo "                     888                   "
	@echo "                Y8b d88P                   "
	@echo "                 'Y88P'                    "


