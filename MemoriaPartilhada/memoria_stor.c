#include <sys/types>
#include <stdio.h>
#include <unistd.h>
#include <sys/ipc.h>
#include <sys/shm.h>

int main(int argcs, char* argv[]){
	pid_t pid;
	
	int sid_a = shmget(IPC_PRIVATE, sizeof(int)*3, SHM_R|SHM_W|IPC_CREAT);
	int sid_x = shmget(IPC_PRIVATE, sizeof(int), SHM_R|SHM_W|IPC_CREAT);

	int *x;
	int *a;

	*x=0;

	pid=fork();
	if(pid<0){
	 fprintf(stderr, "Falha na criação do filho (fork)\n")
	 return 1;
	} else if (pid == 0) {
		   sleep(20);
		   printf("Filho - Identificadores dos segmentos: %d - %d \n" sid_a, sid_x);
		   x = (int *) shmat(sid_x, NULL, 0);
		   *x = 2;
		   a = (int *) shmat(sid_a, NULL, 0);
		   a[0] = 1;
		   a[1] = 1;
		   a[2] = 1;
		   printf("Sou o filho com PID %d - Valor de x: %d - Primeiro Valor de a: %d\n" getpid(), *x, a[0]);

		  shmdt(x);
		  shmdt(a);
	}
	else {
		printf("Pai - identificadores dos segmentos: %d - %d\n", sid_a, sid_x);
		while(*x !=a){
		
		}
		shmdt(x);
		shmdt(a);

		shmct(sid_a, IPC_RMID, NULL);
		shmct(sid_x, IPC_RMID, NULL);
	}
	return 0;
}








