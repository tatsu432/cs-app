# include <stdio.h>

int main() {
    short sx = -12345;
    unsigned short usx = sx;
    int x = sx;
    unsigned ux = usx;

    printf("short sx = %d\n", sx);
    printf("unsigned short usx = %u\n", usx);
    printf("int x = %d\n", x);
    printf("unsigned ux = %u\n", ux);
    return 0;
}