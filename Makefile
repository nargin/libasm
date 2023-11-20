SRCS		=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
SRCS_C		=	helper.c
OBJS		=	$(SRCS:.s=.o)
OBJS_C		=	$(SRCS_C:.c=.o)
# BONUS_SRCS	=	ft_atoi_base_bonus.s ft_list_size_bonus.s ft_list_push_front_bonus.s \
				ft_list_remove_if_bonus.s ft_list_sort_bonus.s
BONUS_OBJS	=	$(BONUS_SRCS:.s=.o)

NA			=	nasm
NA_FLAGS	=	-f elf64
CC			=	gcc
CC_FLAGS	=	-Wall -Wextra -Werror
NAME		=	libasm.a

%.o :			%.c
				$(CC) $(CC_FLAGS) -c $< -o $@

%.o:			%.s
				$(NA) $(NA_FLAGS) $< -o $@

all:			$(NAME)

$(NAME):		$(OBJS) $(OBJS_C)
				ar rcs $(NAME) $(OBJS) $(OBJS_C)
				ranlib $(NAME)

clean:
				rm -rf $(OBJS) $(OBJS_C) $(BONUS_OBJS)

fclean:			clean
				rm -rf $(NAME) $(BONUS)

re:				fclean $(NAME)

bonus:			$(OBJS) $(BONUS_OBJS)
				ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)
				ranlib $(NAME)

.PHONY:			clean fclean re bonus all