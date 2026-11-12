#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(max_fill((const long long *const[]){(const long long[]){0, 0, 1, 0}, (const long long[]){0, 1, 0, 0}, (const long long[]){1, 1, 1, 1}}, (const size_t[]){4, 4, 4}, 3, 1) == 6);
    assert(max_fill((const long long *const[]){(const long long[]){0, 0, 1, 1}, (const long long[]){0, 0, 0, 0}, (const long long[]){1, 1, 1, 1}, (const long long[]){0, 1, 1, 1}}, (const size_t[]){4, 4, 4, 4}, 4, 2) == 5);
    assert(max_fill((const long long *const[]){(const long long[]){0, 0, 0}, (const long long[]){0, 0, 0}}, (const size_t[]){3, 3}, 2, 5) == 0);
    assert(max_fill((const long long *const[]){(const long long[]){1, 1, 1, 1}, (const long long[]){1, 1, 1, 1}}, (const size_t[]){4, 4}, 2, 2) == 4);
    assert(max_fill((const long long *const[]){(const long long[]){1, 1, 1, 1}, (const long long[]){1, 1, 1, 1}}, (const size_t[]){4, 4}, 2, 9) == 2);
    return 0;
}
