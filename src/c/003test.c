#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!below_zero(NULL, 0));
    assert(!below_zero((const long long[]){1, 2, -3, 1, 2, -3}, 6));
    assert(below_zero((const long long[]){1, 2, -4, 5, 6}, 5));
    assert(!below_zero((const long long[]){1, -1, 2, -2, 5, -5, 4, -4}, 8));
    assert(below_zero((const long long[]){1, -1, 2, -2, 5, -5, 4, -5}, 8));
    assert(below_zero((const long long[]){1, -2, 2, -2, 5, -5, 4, -4}, 8));
    return 0;
}
