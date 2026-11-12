#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(below_threshold((const long long[]){1, 2, 4, 10}, 4, 100));
    assert(!below_threshold((const long long[]){1, 20, 4, 10}, 4, 5));
    assert(below_threshold((const long long[]){1, 20, 4, 10}, 4, 21));
    assert(below_threshold((const long long[]){1, 20, 4, 10}, 4, 22));
    assert(below_threshold((const long long[]){1, 8, 4, 10}, 4, 11));
    assert(!below_threshold((const long long[]){1, 8, 4, 10}, 4, 10));
    return 0;
}
