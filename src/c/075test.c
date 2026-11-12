#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!is_multiply_prime(5));
    assert(is_multiply_prime(30));
    assert(is_multiply_prime(8));
    assert(!is_multiply_prime(10));
    assert(is_multiply_prime(125));
    assert(is_multiply_prime(105));
    assert(!is_multiply_prime(126));
    assert(!is_multiply_prime(729));
    assert(!is_multiply_prime(891));
    assert(is_multiply_prime(1001));
    return 0;
}
