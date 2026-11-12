#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!pairs_sum_to_zero((const long long[]){1, 3, 5, 0}, 4));
    assert(!pairs_sum_to_zero((const long long[]){1, 3, -2, 1}, 4));
    assert(!pairs_sum_to_zero((const long long[]){1, 2, 3, 7}, 4));
    assert(pairs_sum_to_zero((const long long[]){2, 4, -5, 3, 5, 7}, 6));
    assert(!pairs_sum_to_zero((const long long[]){1}, 1));
    assert(pairs_sum_to_zero((const long long[]){-3, 9, -1, 3, 2, 30}, 6));
    assert(pairs_sum_to_zero((const long long[]){-3, 9, -1, 3, 2, 31}, 6));
    assert(!pairs_sum_to_zero((const long long[]){-3, 9, -1, 4, 2, 30}, 6));
    assert(!pairs_sum_to_zero((const long long[]){-3, 9, -1, 4, 2, 31}, 6));
    return 0;
}
