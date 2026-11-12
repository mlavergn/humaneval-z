#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!triples_sum_to_zero((const long long[]){1, 3, 5, 0}, 4));
    assert(!triples_sum_to_zero((const long long[]){1, 3, 5, -1}, 4));
    assert(triples_sum_to_zero((const long long[]){1, 3, -2, 1}, 4));
    assert(!triples_sum_to_zero((const long long[]){1, 2, 3, 7}, 4));
    assert(!triples_sum_to_zero((const long long[]){1, 2, 5, 7}, 4));
    assert(triples_sum_to_zero((const long long[]){2, 4, -5, 3, 9, 7}, 6));
    assert(!triples_sum_to_zero((const long long[]){1}, 1));
    assert(!triples_sum_to_zero((const long long[]){1, 3, 5, -100}, 4));
    assert(!triples_sum_to_zero((const long long[]){100, 3, 5, -100}, 4));
    return 0;
}
