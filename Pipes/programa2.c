#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

#define NORMAL	0

int main()
{
  printf("%d: Sou o programa 2\n", getpid());

  return NORMAL;
}
