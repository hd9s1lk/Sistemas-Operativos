#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

#define NORMAL	0

int main(int argc, char * argv[])
{
  if (argc > 1)
   {
    printf("%d: Vou executar \"%s\"\n", getpid(), argv[1]);
    execvp(argv[1], argv);
    fprintf(stderr, "Nao foi possivel obter o programa \"%s\"\n", argv[1]);
   }
   else
    printf("%d: Falta argumento\n", getpid());

  return NORMAL;
}
