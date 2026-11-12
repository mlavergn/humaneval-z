#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(solution((const long long[]){5, 8, 7, 1}, 4) == 12);
    assert(solution((const long long[]){3, 3, 3, 3, 3}, 5) == 9);
    assert(solution((const long long[]){30, 13, 24, 321}, 4) == 0);
    assert(solution((const long long[]){5, 9}, 2) == 5);
    assert(solution((const long long[]){2, 4, 8}, 3) == 0);
    assert(solution((const long long[]){30, 13, 23, 32}, 4) == 23);
    assert(solution((const long long[]){3, 13, 2, 9}, 4) == 3);
    return 0;
}
