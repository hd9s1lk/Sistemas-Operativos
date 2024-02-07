#Nomes dos programas
CC=gcc
RM=rm

#@ elimina a apresentacao do comando na saida mas nao o seu output
#Quando se faz make
all: ola p08c1-c01 args argsenv pipes1 pipes2

#Compilar programas
ola: ola.c
	${CC} ola.c -o ola
argsenv: argsenv.c
	${CC} argsenv.c -o argsenv

p08c1-c01: p08c1-c01.c
	${CC} p08c1-c01.c -o p08c1-c01
args: args.c
	${CC} args.c -o args
pipes1: pipes1.c
	${CC} pipes1.c -o pipes1
pipes2: pipes2.c
	${CC} pipes2.c -o pipes2

#remover todos os programas
clean:
	${RM} ola p08c1-c01 args pipes1 argsenv pipes2
clean_pipes:
	${RM} pipes1 pipes2
#Refazer os programas
rebuild: clean ola p08c1-c01 args pipes1 pipes2
	@echo Programas criados
