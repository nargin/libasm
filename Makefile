SRCS		=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s #ft_read.s ft_strdup.s
OBJS		=	$(SRCS:.s=.o)
# BONUS_SRCS	=	ft_atoi_base_bonus.s ft_list_size_bonus.s ft_list_push_front_bonus.s \
				ft_list_remove_if_bonus.s ft_list_sort_bonus.s
BONUS_OBJS	=	$(BONUS_SRCS:.s=.o)

NA			=	nasm
NA_FLAGS	=	-f elf64
NAME		=	libasm.a

%.o:			%.s
				$(NA) $(NA_FLAGS) $<

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)
				ranlib $(NAME)

clean:
				rm -rf $(OBJS) $(BONUS_OBJS)

fclean:			clean
				rm -rf $(NAME) $(BONUS)

re:				fclean $(NAME)

bonus:			$(OBJS) $(BONUS_OBJS)
				ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)
				ranlib $(NAME)

.PHONY:			clean fclean re bonus all