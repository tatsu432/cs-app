#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

pid_t fork(void);
pid_t waitpid(pid_t pid, int *status, int options);

int main()
{
    pid_t pid = fork();

if (pid == 0) {
    sleep(3);
    exit(0);
} else {
    while (1) {
        pid_t ret = waitpid(pid, NULL, WNOHANG);
        if (ret == 0) {
            printf("Child still running...\n");
            sleep(1);
        } else {
            printf("Child finished!\n");
            break;
        }
    }
}
}