#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(is_sorted((const long long[]){5}, 1));
    assert(is_sorted((const long long[]){1, 2, 3, 4, 5}, 5));
    assert(!is_sorted((const long long[]){1, 3, 2, 4, 5}, 5));
    assert(is_sorted((const long long[]){1, 2, 3, 4, 5, 6}, 6));
    assert(is_sorted((const long long[]){1, 2, 3, 4, 5, 6, 7}, 7));
    assert(!is_sorted((const long long[]){1, 3, 2, 4, 5, 6, 7}, 7));
    assert(is_sorted(NULL, 0));
    assert(is_sorted((const long long[]){1}, 1));
    assert(!is_sorted((const long long[]){3, 2, 1}, 3));
    assert(!is_sorted((const long long[]){1, 2, 2, 2, 3, 4}, 6));
    assert(!is_sorted((const long long[]){1, 2, 3, 3, 3, 4}, 6));
    assert(is_sorted((const long long[]){1, 2, 2, 3, 3, 4}, 6));
    assert(is_sorted((const long long[]){1, 2, 3, 4}, 4));
    return 0;
}
