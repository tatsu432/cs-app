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

if (pid == 0)
{
    // Child process
    sleep(3); // Simulate some work for 3 seconds
    printf("Child done\n");
    exit(0);
}
else
{
    // Parent process
    printf("Parent waiting...\n");
    waitpid(pid, NULL, 0); // Parent blocks here for ~3 seconds
    printf("Parent resumes after child terminates\n");
}
}