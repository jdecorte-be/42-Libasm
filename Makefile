NAME = libasm.a

SRCS =	ft_strlen.s			\
	# ft_strcpy.s			\
	# ft_strcmp.s			\
	# ft_strdup.s			\
	# ft_write.s			\
	# ft_read.s	

CC = nasm -felf64

OBJS = ${SRCS:.s=.o}

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}

all: ${NAME}

.s.o:
	${CC} -o $@ $?

test:
	gcc $(NAME) ${OBJS} main.c -o test
	./test
	rm -rf test

clean:
	rm -rf ${OBJS}

fclean: clean
	rm -rf $(NAME)
	rm -rf a.out

re: fclean all