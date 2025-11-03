#include <stdio.h>

int main() {
    int *p = NULL;
    *p = 42;  // segmentation fault
    return 0;
}
