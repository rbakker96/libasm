# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: rbakker <rbakker@student.42.fr>              +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/29 08:44:29 by rbakker       #+#    #+#                  #
#    Updated: 2020/05/14 13:45:52 by roybakker     ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME =			libasm.a

SOURCES	=		ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_read.s \
				ft_write.s
OBJECTS_S =		${SOURCES:%.s=%.o}

FLAGS =			-Wall -Wextra -Werror
COMPILE_ASM	=	nasm -f macho64
COMPILE_C =		gcc
LIB	=			ar rc

GREEN = \033[38;5;46m
WHITE = \033[38;5;15m
GREY = \033[38;5;8m
ORANGE= \033[38;5;202m
RED = \033[38;5;160m

all: $(NAME)

%.o: %.s
	@echo "$(GREY)Compiling...				$(WHITE)$<"
	@$(COMPILE_ASM) -o $@ $<

$(NAME): $(OBJECTS_S)
	@echo "$(ORANGE)Creating library..."
	@$(LIB) $(NAME) $(OBJECTS_S) $?
	@echo "$(GREEN)Succesful"

mandatory: $(NAME)
	@/bin/rm -f mandatory
	@$(COMPILE_C) $(FLAGS) -L. -lasm mandatory.c -o mandatory
	@echo "$(GREEN)START TESTING MANDATORY PART OF LIBASM"
	@./mandatory test.txt test2.txt

bonus: $(OBJECTS_S) $(OBJECTS_B)
	@echo "$(ORANGE)Creating library with bonus..."
	@$(LIB) $(NAME) $(OBJECTS_B) $?
	@echo "$(GREEN)Succesful"

clean:
	@echo "$(RED)DELETING OcBJECTFILES"
	@/bin/rm -f $(OBJECTS_S)
	@/bin/rm -f $(OBJECTS_B)

fclean: clean
	@echo "$(RED)DELETING EXECUTABLE"
	@/bin/rm -f $(NAME) mandatory

re: fclean all

.PHONY: all bonus clean fclean re
