# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maducham <maducham@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/05 14:27:55 by maducham          #+#    #+#              #
#    Updated: 2014/11/11 20:54:58 by maducham         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all, fclean, clean, re

NAME = libft.a

SRC = ft_strlen.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c \
	  ft_strcmp.c ft_strncmp.c ft_isalpha.c ft_isdigit.c ft_isalnum.c\
	  ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_strstr.c\
	  ft_strnstr.c ft_strchr.c ft_strrchr.c ft_strclr.c ft_striter.c\
	  ft_putchar.c ft_putstr.c ft_strdup.c ft_atoi.c ft_strlcat.c\
	  ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c\
	  ft_memchr.c ft_memcmp.c ft_memalloc.c ft_memdel.c ft_strnew.c\
	  ft_strdel.c ft_strequ.c ft_strsub.c ft_strnequ.c ft_strjoin.c\
	  ft_strtrim.c ft_strsplit.c ft_putchar.c ft_putstr.c ft_putendl.c\
	  ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	  ft_putnbr_fd.c ft_strmap.c ft_strmapi.c ft_lstnew.c ft_lstdelone.c \
	  ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_create_elem.c ft_list_at.c \
	  ft_list_clear.c ft_list_last.c ft_list_push_back.c ft_list_push_front.c \
	  ft_list_push_params.c ft_list_reverse.c ft_list_size.c ft_list_sort.c

OBJ = $(SRC:.c=.o)

GCC = gcc -g -Wall -Wextra -Werror -Iincludes

all: $(NAME)

$(NAME): $(OBJ) 
	ar rc $(NAME)  $(OBJ)

%.o: %.c
	$(GCC) -c $<

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
