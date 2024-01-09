# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akaltine <akaltine@student.42kocaeli.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/16 23:12:36 by akaltine          #+#    #+#              #
#    Updated: 2023/07/17 23:58:32 by akaltine         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a
FLAG = -Wall -Wextra -Werror
SRC = $(shell find . ! -name "ft_lst*.c" -name "ft_*.c")
BONUS = $(shell find . -name "ft_lst*.c")


all: $(NAME)

$(NAME):
	gcc $(FLAG) -c $(SRC)
	ar rc $(NAME) *.o
clean:
	/bin/rm -f  *.o
fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re