# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: epaksoy <epaksoy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/22 02:31:56 by epaksoy           #+#    #+#              #
#    Updated: 2024/01/22 02:32:55 by epaksoy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

BONUS_NAME = checker

LIBFT = libft

LIBFTM = libft/libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

CFILES_1 = push_swap.c

CFILES_2 = 	utils.c \
			sort_func.c \
			sort_small_func.c \
			sort.c \
			rules_a.c \
			rules_b.c \
			rules_ab.c \
			quick_sort.c \
			free_error.c \

OBJS_1 = $(CFILES_1:.c=.o)

OBJS_2 = $(CFILES_2:.c=.o)

$(NAME): $(OBJS_1) $(OBJS_2)
	@make -C $(LIBFT)
	@$(CC) $(CFLAGS) $(OBJS_1) $(OBJS_2) $(LIBFTM) -o $(NAME)
	@echo "Push_swap is ready\n"

all: $(NAME)
	@echo "All files compiled successfully\n"

clean:
		@rm -f $(OBJS_1) $(OBJS_2)
		@make clean -C $(LIBFT)
		@echo "Objects files deleted\n"

fclean: clean
		@make fclean -C $(LIBFT)
		@rm -rf $(NAME)
		@echo "Archive file deleted\n"

re: fclean All

