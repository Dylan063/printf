# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dravaono <dravaono@student42nice.fr>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/13 18:42:35 by dravaono          #+#    #+#              #
#    Updated: 2023/04/13 18:54:34 by dravaono         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = $ ft_strchr.c ft_printf.c ft_putchar.c ft_putstr.c ft_printhexa_max.c \
		 ft_putnbr.c ft_printhexa_min.c ft_putinnbr.c ft_putptr.c  \


OBJS = ${SRCS:.c=.o}
NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs 
RM = rm -rf

all : ${NAME}

${NAME}:${OBJS}
	${AR} ${NAME} ${OBJS}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
