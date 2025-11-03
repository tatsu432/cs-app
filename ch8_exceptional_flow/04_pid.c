#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
pid_t getpid(void);
pid_t getppid(void);

int main()
{
    pid_t pid = getpid();
    pid_t ppid = getppid();
    printf("pid: %d\n", pid);
    printf("ppid: %d\n", ppid);
    return 0;
}