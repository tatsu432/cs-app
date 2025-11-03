#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

pid_t fork(void);
pid_t getpid(void);
pid_t getppid(void);

int main()
{
    pid_t pid;
    int x = 1;
    pid = fork();
    if (pid == 0)
    { /* Child */
        printf("child : x=%d\n", ++x);
        exit(0);
    }
    printf("parent: x=%d\n", --x);
    exit(0);
}