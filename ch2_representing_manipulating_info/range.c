# include <stdio.h>
# include <limits.h>

int main() {
    printf("short range: %d to %d\n", SHRT_MIN, SHRT_MAX);
    printf("int range: %d to %d\n", INT_MIN, INT_MAX);
    printf("unsigned int range: %u to %u\n", 0, UINT_MAX);
    printf("long range: %ld to %ld\n", LONG_MIN, LONG_MAX);
    printf("unsigned long range: %lu to %lu\n", 0, ULONG_MAX);
    printf("long long range: %lld to %lld\n", LLONG_MIN, LLONG_MAX);
    printf("unsigned long long range: %llu to %llu\n", 0, ULLONG_MAX);
    return 0;
}