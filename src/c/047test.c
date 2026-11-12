#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(median((const long long[]){3, 1, 2, 4, 5}, 5) == 3.0);
    assert(median((const long long[]){-10, 4, 6, 1000, 10, 20}, 6) == 8.0);
    assert(median((const long long[]){5}, 1) == 5.0);
    assert(median((const long long[]){6, 5}, 2) == 5.5);
    assert(median((const long long[]){8, 1, 3, 9, 9, 2, 7}, 7) == 7.0);
    return 0;
}
