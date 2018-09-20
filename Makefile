# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: smathe <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/31 15:05:13 by smathe            #+#    #+#              #
#    Updated: 2018/06/14 14:41:31 by smathe           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

HEADER  = libft.h

CFLAGS	= -Wall -Werror -Wextra -I.

CC		= gcc -c

FILES	= ft_isascii.c \
		  ft_strsplit.c \
		  ft_putnbr_fd.c \
		  ft_strtrim.c \
		  ft_strsub.c \
		  ft_strnequ.c \
		  ft_atoi.c \
		  ft_strequ.c \
		  ft_strmapi.c \
		  ft_putendl_fd.c \
		  ft_striteri.c \
		  ft_striter.c \
		  ft_strclr.c \
		  ft_strnew.c \
		  ft_memalloc.c \
		  ft_strnstr.c \
		  ft_strstr.c \
		  ft_atoi.c \
		  ft_strncmp.c \
		  ft_strrchr.c \
		  ft_strchr.c \
		  ft_strdup.c \
		  ft_memcmp.c \
		  ft_memmove.c \
		  ft_strlcat.c \
		  ft_strncat.c \
		  ft_memccpy.c \
		  ft_bzero.c \
		  ft_memcpy.c \
		  ft_isdigit.c \
		  ft_isprint.c \
		  ft_memchr.c \
		  ft_memset.c \
		  ft_isalnum.c \
		  ft_isalpha.c \
		  ft_putchar.c \
		  ft_putendl.c \
		  ft_putnbr.c \
		  ft_putstr.c \
		  ft_strcat.c \
		  ft_strcmp.c \
		  ft_strcpy.c \
		  ft_strlen.c \
		  ft_strmap.c \
		  ft_strncpy.c \
		  ft_tolower.c \
		  ft_toupper.c \
		  ft_putchar_fd.c \
		  ft_putstr_fd.c \
		  ft_itoa.c \
		  ft_strdel.c \
		  ft_memdel.c \
		  ft_strjoin.c

OBJ		= $(FILES:%.c=%.o)

all: $(NAME)

$(NAME):
	$(CC) $(FILES) $(FLAGS)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

fclean:
	rm -f $(OBJ) $(NAME)

clean:
	rm -f $(OBJ)

re: fclean all
