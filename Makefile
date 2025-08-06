# **************************************************************************** #
#																			   #
#														  :::	   ::::::::    #
#	 Makefile											:+:		 :+:	:+:    #
#													  +:+ +:+		  +:+	   #
#	 By: acarranz <marvin@42.fr>					+#+  +:+	   +#+		   #
#												  +#+#+#+#+#+	+#+			   #
#	 Created: 2024/09/25 13:45:15 by acarranz		   #+#	  #+#			   #
#	 Updated: 2024/09/25 13:45:15 by acarranz		  ###	########.fr		   #
#																			   #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror -I.
AR = ar
ARFLAGS = rcs
INC = libft.h Makefile
NAME = libft.a
SRC = ft_atoi.c ft_isdigit.c ft_memmove.c ft_split.c ft_strlcpy.c ft_strrchr.c \
	   ft_bzero.c ft_isprint.c ft_memset.c ft_strchr.c ft_strlen.c ft_strtrim.c \
	   ft_calloc.c ft_itoa.c ft_putchar_fd.c ft_strdup.c ft_strmapi.c ft_substr.c \
	   ft_isacii.c ft_memchr.c ft_putendl_fd.c ft_striteri.c ft_strncmp.c ft_tolower.c \
	   ft_isalnum.c ft_memcmp.c ft_putnbr_fd.c ft_strjoin.c ft_strncpy.c ft_toupper.c \
	   ft_isalpha.c ft_memcpy.c ft_putstr_fd.c ft_strlcat.c ft_strnstr.c
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(INC)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ)

clean:
	rm -f $(wildcard *.o)

fclean: clean
	rm -f $(NAME)

re: fclean all

so: $(OBJ)
	$(CC) -shared -o $(OBJ)

