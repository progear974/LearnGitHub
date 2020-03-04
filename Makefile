##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Makefile
##

SRC_WM_NAME	=	my_strlen.c

SRC_NAME	=	$(SRC_WM_NAME)	\
			main.c

TEST_NAME	=	test_strlen.c

SRC_WM		=	$(SRC_WM_NAME)

SRC		=	$(SRC_NAME)

TEST		=	$(addprefix tests/, $(TEST_NAME))

NAME		=	a.out

CFLAGS		=	-g

OBJ		=	$(SRC:.c=.o)

OBJ_WM		=	$(SRC_WM:.c=.o)

OBJ_T		=	$(TEST:.c=.o)

all:
			make project

project:		$(NAME)

$(NAME):		$(OBJ)
			gcc -o $(NAME) $(OBJ) $(CFLAGS)

clean:
			rm -rf $(OBJ)
			rm -rf *.gcda
			rm -rf *.gcno

fclean:			clean
			rm -rf $(NAME)
			rm -rf tests_run

re:			fclean all

tests_run:
			gcc -o tests_run $(SRC_WM) $(TEST) -lcriterion --coverage
			./tests_run
