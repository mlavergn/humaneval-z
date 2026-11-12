#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(monotonic((const long long[]){1, 2, 4, 10}, 4));
    assert(monotonic((const long long[]){1, 2, 4, 20}, 4));
    assert(!monotonic((const long long[]){1, 20, 4, 10}, 4));
    assert(monotonic((const long long[]){4, 1, 0, -10}, 4));
    assert(monotonic((const long long[]){4, 1, 1, 0}, 4));
    assert(!monotonic((const long long[]){1, 2, 3, 2, 5, 60}, 6));
    assert(monotonic((const long long[]){1, 2, 3, 4, 5, 60}, 6));
    assert(monotonic((const long long[]){9, 9, 9, 9}, 4));
    return 0;
}
