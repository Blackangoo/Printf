SRCS = 

NAME = libftprintf.a

OBJS = ${SRCS:.c=.o}

CC = gcc

CFLAGS = -Wall -Wextra -Werror

AR = ar rcs 

RM = rm -f

all: ${NAME}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME} : ${OBJS}
	${AR} ${NAME} ${OBJS}

clean :
	${RM} ${OBJS} ${BONUS}

fclean : clean
	${RM} ${NAME}

re : fclean all

.PHONY: all clean fclean re