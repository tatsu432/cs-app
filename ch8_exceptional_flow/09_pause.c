#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

void handler(int sig) {
    int status;
    pid_t pid;

    // Reap terminated child
    pid = wait(&status);
    printf("Handler reaped child %d\n", pid);
}

int main() {
    pid_t pid;

    // Install signal handler for SIGCHLD (child termination)
    signal(SIGCHLD, handler);

    if ((pid = fork()) == 0) {
        // Child process
        printf("Child process running...\n");
        sleep(2);
        exit(0);
    }

    // Parent process waits for signals
    printf("Parent waiting for child to terminate...\n");
    pause();  // Suspends until SIGCHLD arrives

    printf("Parent resumes after signal\n");
    return 0;
}
