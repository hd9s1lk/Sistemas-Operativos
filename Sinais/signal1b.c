#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <signal.h>

#define NORMAL	0

enum _BOOLEAN {FALSE = 0, TRUE = 1};
typedef enum _BOOLEAN BOOLEAN;

int sair = FALSE;

void (*handlerHUP(int signal))(int sinal)
{
  puts("Programa recebeu um SIGHUP");
}

void (*handlerINT(int signal))(int sinal)
{
  puts("Programa recebeu um SIGINT");
}

void (*handlerQUIT(int signal))(int sinal)
{
  puts("Programa recebeu um SIGQUIT");
  sair = TRUE;
}

int main()
{
  signal(SIGHUP, (void (*)(int))handlerHUP);   //associar função ao sinal SIGHUP
  signal(SIGINT, (void (*)(int))handlerINT);   //associar função ao sinal SIGHUP
  signal(SIGQUIT, (void (*)(int))handlerQUIT);//associar função ao sinal SIGQUIT
  
  printf("Programa (processo %d) recebe os sinais SIGHUP, SIGINT e SIGQUIT\n", getpid());
  while (sair != TRUE)
    sleep(1);
  puts("Abandonado programa devido a um SIGQUIT");

  return NORMAL;
}
