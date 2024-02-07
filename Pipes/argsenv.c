#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

#define NORMAL	0

int main(int argc, char * argv[], char * env[])
{
  int i;
  
  printf("Argumentos (%d):\n", argc);
  for( i = 0 ; i < argc ; i++ )
    printf("\targv[%d]=%s\n", i, argv[i]);

  puts("Variaveis de ambiente:");
  i = 0;
  while (env[i] != NULL)
    printf("\t%s\n", env[i++]);
  
  return NORMAL;
}
