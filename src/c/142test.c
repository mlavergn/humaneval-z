#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(sum_squares((const long long[]){1, 2, 3}, 3) == 6);
    assert(sum_squares((const long long[]){1, 4, 9}, 3) == 14);
    assert(sum_squares(NULL, 0) == 0);
    assert(sum_squares((const long long[]){1, 1, 1, 1, 1, 1, 1, 1, 1}, 9) == 9);
    assert(sum_squares((const long long[]){-1, -1, -1, -1, -1, -1, -1, -1, -1}, 9) == -3);
    assert(sum_squares((const long long[]){0}, 1) == 0);
    assert(sum_squares((const long long[]){-1, -5, 2, -1, -5}, 5) == -126);
    assert(sum_squares((const long long[]){-56, -99, 1, 0, -2}, 5) == 3030);
    assert(sum_squares((const long long[]){-1, 0, 0, 0, 0, 0, 0, 0, -1}, 9) == 0);
    assert(sum_squares((const long long[]){-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37}, 15) == -14196);
    assert(sum_squares((const long long[]){-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10}, 20) == -1448);
    return 0;
}
